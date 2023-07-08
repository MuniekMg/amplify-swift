import Foundation

public protocol GraphQLInputValue {
  func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny
}

public struct GraphQLVariable {
  let name: String
  
  public init(_ name: String) {
    self.name = name
  }
}

extension GraphQLVariable: GraphQLInputValue {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny {
    guard let value = variables?[name] else {
      throw GraphQLError("Variable \(name) was not provided.")
    }
    return value.jsonValue
  }
}

extension JSONEncodable {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny {
    return jsonValue
  }
}

extension Dictionary: GraphQLInputValue {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny {
    return try evaluate(with: variables) as JSONObject
  }
}

extension Dictionary {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONObject {
    var jsonObject = JSONObject(minimumCapacity: count)
    for (key, value) in self {
      if case let (key as String, value as GraphQLInputValue) = (key, value) {
        let evaluatedValue = try value.evaluate(with: variables)
        if !(evaluatedValue is NSNull) {
          jsonObject[key] = evaluatedValue
        }
      } else {
        fatalError("Dictionary is only GraphQLInputValue if Value is (and if Key is String)")
      }
    }
    return jsonObject
  }
}

extension Array: GraphQLInputValue {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny {
    return try evaluate(with: variables) as [JSONValueAny]
  }
}

extension Array {
  public func evaluate(with variables: [String: JSONEncodable]?) throws -> [JSONValueAny] {
    var jsonArray = [JSONValueAny]()
    jsonArray.reserveCapacity(count)
    for (value) in self {
      if case let (value as GraphQLInputValue) = value {
        jsonArray.append(try value.evaluate(with: variables))
      } else {
        fatalError("Array is only GraphQLInputValue if Element is")
      }
    }
    return jsonArray
  }
}

public typealias GraphQLMap = [String: JSONEncodable?]

extension Dictionary where Key == String, Value == JSONEncodable? {
  public var withNilValuesRemoved: Dictionary<String, JSONEncodable> {
    var filtered = Dictionary<String, JSONEncodable>(minimumCapacity: count)
    for (key, value) in self {
      if value != nil {
        filtered[key] = value
      }
    }
    return filtered
  }
}

public protocol GraphQLMapConvertible: JSONEncodable {
  var graphQLMap: GraphQLMap { get }
}

public extension GraphQLMapConvertible {
  var jsonValue: JSONValueAny {
    return graphQLMap.withNilValuesRemoved.jsonValue
  }
}

public extension GraphQLMapConvertible {
  func evaluate(with variables: [String: JSONEncodable]?) throws -> JSONValueAny {
    return try graphQLMap.evaluate(with: variables)
  }
}

public typealias GraphQLID = String