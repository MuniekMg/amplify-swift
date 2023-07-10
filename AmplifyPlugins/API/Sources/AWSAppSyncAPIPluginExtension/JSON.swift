import Foundation

public typealias JSONValueAny = Any

public typealias JSONObject = [String: JSONValueAny]

public protocol JSONDecodable {
  init(jsonValue value: JSONValueAny) throws
}

public protocol JSONEncodable: GraphQLInputValue {
  var jsonValue: JSONValueAny { get }
}

public enum JSONDecodingError: Error, LocalizedError {
  case missingValue
  case nullValue
  case wrongType
  case couldNotConvert(value: Any, to: Any.Type)
  
  public var errorDescription: String? {
    switch self {
    case .missingValue:
      return "Missing value"
    case .nullValue:
      return "Unexpected null value"
    case .wrongType:
      return "Wrong type"
    case .couldNotConvert(let value, let expectedType):
      return "Could not convert \"\(value)\" to \(expectedType)"
    }
  }
}

//extension JSONDecodingError: Matchable {
//  public typealias Base = Error
//  public static func ~=(pattern: JSONDecodingError, value: Error) -> Bool {
//    guard let value = value as? JSONDecodingError else {
//      return false
//    }
//    
//    switch (value, pattern) {
//    case (.missingValue, .missingValue), (.nullValue, .nullValue), (.couldNotConvert, .couldNotConvert):
//      return true
//    default:
//      return false
//    }
//  }
//}

enum AmplifyJSONValue {
    case array([AmplifyJSONValue])
    case boolean(Bool)
    case number(Double)
    case object([String: AmplifyJSONValue])
    case string(String)
    case null
}

extension AmplifyJSONValue: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        
        if let value = try? container.decode([String: AmplifyJSONValue].self) {
            self = .object(value)
        } else if let value = try? container.decode([AmplifyJSONValue].self) {
            self = .array(value)
        } else if let value = try? container.decode(Double.self) {
            self = .number(value)
        } else if let value = try? container.decode(Bool.self) {
            self = .boolean(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else {
            self = .null
        }
    }
}
