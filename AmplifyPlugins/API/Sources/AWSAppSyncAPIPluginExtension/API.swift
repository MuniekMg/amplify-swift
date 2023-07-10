//  This file was automatically generated and should not be edited.

//import AWSAppSync
import AWSAppSyncAPIPluginExtension

public struct CreateBlogInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String) {
    graphQLMap = ["id": id, "name": name]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ModelBlogConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, and: [ModelBlogConditionInput?]? = nil, or: [ModelBlogConditionInput?]? = nil, not: ModelBlogConditionInput? = nil) {
    graphQLMap = ["name": name, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [ModelBlogConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBlogConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBlogConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBlogConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBlogConditionInput? {
    get {
      return graphQLMap["not"] as! ModelBlogConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateBlogInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil) {
    graphQLMap = ["id": id, "name": name]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct DeleteBlogInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, title: String, blogPostsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "title": title, "blogPostsId": blogPostsId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var blogPostsId: GraphQLID? {
    get {
      return graphQLMap["blogPostsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blogPostsId")
    }
  }
}

public struct ModelPostConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, and: [ModelPostConditionInput?]? = nil, or: [ModelPostConditionInput?]? = nil, not: ModelPostConditionInput? = nil, blogPostsId: ModelIDInput? = nil) {
    graphQLMap = ["title": title, "and": and, "or": or, "not": not, "blogPostsId": blogPostsId]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var and: [ModelPostConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPostConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPostConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPostConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPostConditionInput? {
    get {
      return graphQLMap["not"] as! ModelPostConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var blogPostsId: ModelIDInput? {
    get {
      return graphQLMap["blogPostsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blogPostsId")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, blogPostsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "title": title, "blogPostsId": blogPostsId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var blogPostsId: GraphQLID? {
    get {
      return graphQLMap["blogPostsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blogPostsId")
    }
  }
}

public struct DeletePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, content: String, postCommentsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "content": content, "postCommentsId": postCommentsId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var postCommentsId: GraphQLID? {
    get {
      return graphQLMap["postCommentsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postCommentsId")
    }
  }
}

public struct ModelCommentConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(content: ModelStringInput? = nil, and: [ModelCommentConditionInput?]? = nil, or: [ModelCommentConditionInput?]? = nil, not: ModelCommentConditionInput? = nil, postCommentsId: ModelIDInput? = nil) {
    graphQLMap = ["content": content, "and": and, "or": or, "not": not, "postCommentsId": postCommentsId]
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var and: [ModelCommentConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCommentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCommentConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCommentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCommentConditionInput? {
    get {
      return graphQLMap["not"] as! ModelCommentConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var postCommentsId: ModelIDInput? {
    get {
      return graphQLMap["postCommentsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postCommentsId")
    }
  }
}

public struct UpdateCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, content: String? = nil, postCommentsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "content": content, "postCommentsId": postCommentsId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var postCommentsId: GraphQLID? {
    get {
      return graphQLMap["postCommentsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postCommentsId")
    }
  }
}

public struct DeleteCommentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelBlogFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, and: [ModelBlogFilterInput?]? = nil, or: [ModelBlogFilterInput?]? = nil, not: ModelBlogFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [ModelBlogFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBlogFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBlogFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBlogFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBlogFilterInput? {
    get {
      return graphQLMap["not"] as! ModelBlogFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelPostFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, title: ModelStringInput? = nil, and: [ModelPostFilterInput?]? = nil, or: [ModelPostFilterInput?]? = nil, not: ModelPostFilterInput? = nil, blogPostsId: ModelIDInput? = nil) {
    graphQLMap = ["id": id, "title": title, "and": and, "or": or, "not": not, "blogPostsId": blogPostsId]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var and: [ModelPostFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPostFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPostFilterInput? {
    get {
      return graphQLMap["not"] as! ModelPostFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var blogPostsId: ModelIDInput? {
    get {
      return graphQLMap["blogPostsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blogPostsId")
    }
  }
}

public struct ModelCommentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, content: ModelStringInput? = nil, and: [ModelCommentFilterInput?]? = nil, or: [ModelCommentFilterInput?]? = nil, not: ModelCommentFilterInput? = nil, postCommentsId: ModelIDInput? = nil) {
    graphQLMap = ["id": id, "content": content, "and": and, "or": or, "not": not, "postCommentsId": postCommentsId]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var and: [ModelCommentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCommentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCommentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCommentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCommentFilterInput? {
    get {
      return graphQLMap["not"] as! ModelCommentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var postCommentsId: ModelIDInput? {
    get {
      return graphQLMap["postCommentsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postCommentsId")
    }
  }
}

public struct ModelSubscriptionBlogFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, name: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionBlogFilterInput?]? = nil, or: [ModelSubscriptionBlogFilterInput?]? = nil) {
    graphQLMap = ["id": id, "name": name, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["name"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [ModelSubscriptionBlogFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionBlogFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionBlogFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionBlogFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, `in`: [GraphQLID?]? = nil, notIn: [GraphQLID?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [GraphQLID?]? {
    get {
      return graphQLMap["in"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [GraphQLID?]? {
    get {
      return graphQLMap["notIn"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, `in`: [String?]? = nil, notIn: [String?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [String?]? {
    get {
      return graphQLMap["in"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [String?]? {
    get {
      return graphQLMap["notIn"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionPostFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, title: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionPostFilterInput?]? = nil, or: [ModelSubscriptionPostFilterInput?]? = nil) {
    graphQLMap = ["id": id, "title": title, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["title"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var and: [ModelSubscriptionPostFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionPostFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionCommentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, content: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionCommentFilterInput?]? = nil, or: [ModelSubscriptionCommentFilterInput?]? = nil) {
    graphQLMap = ["id": id, "content": content, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var content: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["content"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var and: [ModelSubscriptionCommentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionCommentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionCommentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionCommentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public final class CreateBlogMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateBlog($input: CreateBlogInput!, $condition: ModelBlogConditionInput) {\n  createBlog(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateBlogInput
  public var condition: ModelBlogConditionInput?

  public init(input: CreateBlogInput, condition: ModelBlogConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createBlog", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createBlog: CreateBlog? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createBlog": createBlog.flatMap { $0.snapshot }])
    }

    public var createBlog: CreateBlog? {
      get {
        return (snapshot["createBlog"] as? Snapshot).flatMap { CreateBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createBlog")
      }
    }

    public struct CreateBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class UpdateBlogMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBlog($input: UpdateBlogInput!, $condition: ModelBlogConditionInput) {\n  updateBlog(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateBlogInput
  public var condition: ModelBlogConditionInput?

  public init(input: UpdateBlogInput, condition: ModelBlogConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBlog", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateBlog: UpdateBlog? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateBlog": updateBlog.flatMap { $0.snapshot }])
    }

    public var updateBlog: UpdateBlog? {
      get {
        return (snapshot["updateBlog"] as? Snapshot).flatMap { UpdateBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateBlog")
      }
    }

    public struct UpdateBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class DeleteBlogMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBlog($input: DeleteBlogInput!, $condition: ModelBlogConditionInput) {\n  deleteBlog(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteBlogInput
  public var condition: ModelBlogConditionInput?

  public init(input: DeleteBlogInput, condition: ModelBlogConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBlog", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBlog: DeleteBlog? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBlog": deleteBlog.flatMap { $0.snapshot }])
    }

    public var deleteBlog: DeleteBlog? {
      get {
        return (snapshot["deleteBlog"] as? Snapshot).flatMap { DeleteBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteBlog")
      }
    }

    public struct DeleteBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePost($input: CreatePostInput!, $condition: ModelPostConditionInput) {\n  createPost(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var input: CreatePostInput
  public var condition: ModelPostConditionInput?

  public init(input: CreatePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPost: CreatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
    }

    public var createPost: CreatePost? {
      get {
        return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($input: UpdatePostInput!, $condition: ModelPostConditionInput) {\n  updatePost(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var input: UpdatePostInput
  public var condition: ModelPostConditionInput?

  public init(input: UpdatePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($input: DeletePostInput!, $condition: ModelPostConditionInput) {\n  deletePost(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var input: DeletePostInput
  public var condition: ModelPostConditionInput?

  public init(input: DeletePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class CreateCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateComment($input: CreateCommentInput!, $condition: ModelCommentConditionInput) {\n  createComment(input: $input, condition: $condition) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var input: CreateCommentInput
  public var condition: ModelCommentConditionInput?

  public init(input: CreateCommentInput, condition: ModelCommentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createComment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createComment: CreateComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createComment": createComment.flatMap { $0.snapshot }])
    }

    public var createComment: CreateComment? {
      get {
        return (snapshot["createComment"] as? Snapshot).flatMap { CreateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createComment")
      }
    }

    public struct CreateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class UpdateCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateComment($input: UpdateCommentInput!, $condition: ModelCommentConditionInput) {\n  updateComment(input: $input, condition: $condition) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var input: UpdateCommentInput
  public var condition: ModelCommentConditionInput?

  public init(input: UpdateCommentInput, condition: ModelCommentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateComment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateComment: UpdateComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateComment": updateComment.flatMap { $0.snapshot }])
    }

    public var updateComment: UpdateComment? {
      get {
        return (snapshot["updateComment"] as? Snapshot).flatMap { UpdateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateComment")
      }
    }

    public struct UpdateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class DeleteCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteComment($input: DeleteCommentInput!, $condition: ModelCommentConditionInput) {\n  deleteComment(input: $input, condition: $condition) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var input: DeleteCommentInput
  public var condition: ModelCommentConditionInput?

  public init(input: DeleteCommentInput, condition: ModelCommentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteComment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteComment: DeleteComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteComment": deleteComment.flatMap { $0.snapshot }])
    }

    public var deleteComment: DeleteComment? {
      get {
        return (snapshot["deleteComment"] as? Snapshot).flatMap { DeleteComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteComment")
      }
    }

    public struct DeleteComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetBlogQuery: GraphQLQuery {
  public static let operationString =
    "query GetBlog($id: ID!) {\n  getBlog(id: $id) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBlog", arguments: ["id": GraphQLVariable("id")], type: .object(GetBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getBlog: GetBlog? = nil) {
      self.init(snapshot: ["__typename": "Query", "getBlog": getBlog.flatMap { $0.snapshot }])
    }

    public var getBlog: GetBlog? {
      get {
        return (snapshot["getBlog"] as? Snapshot).flatMap { GetBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getBlog")
      }
    }

    public struct GetBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class ListBlogsQuery: GraphQLQuery {
  public static let operationString =
    "query ListBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) {\n  listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelBlogFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelBlogFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listBlogs", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listBlogs: ListBlog? = nil) {
      self.init(snapshot: ["__typename": "Query", "listBlogs": listBlogs.flatMap { $0.snapshot }])
    }

    public var listBlogs: ListBlog? {
      get {
        return (snapshot["listBlogs"] as? Snapshot).flatMap { ListBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listBlogs")
      }
    }

    public struct ListBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelBlogConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelBlogConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($id: ID!) {\n  getPost(id: $id) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["id": GraphQLVariable("id")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class ListPostsQuery: GraphQLQuery {
  public static let operationString =
    "query ListPosts($filter: ModelPostFilterInput, $limit: Int, $nextToken: String) {\n  listPosts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    nextToken\n  }\n}"

  public var filter: ModelPostFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelPostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPosts: ListPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPosts": listPosts.flatMap { $0.snapshot }])
    }

    public var listPosts: ListPost? {
      get {
        return (snapshot["listPosts"] as? Snapshot).flatMap { ListPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPosts")
      }
    }

    public struct ListPost: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelPostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetCommentQuery: GraphQLQuery {
  public static let operationString =
    "query GetComment($id: ID!) {\n  getComment(id: $id) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getComment", arguments: ["id": GraphQLVariable("id")], type: .object(GetComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getComment: GetComment? = nil) {
      self.init(snapshot: ["__typename": "Query", "getComment": getComment.flatMap { $0.snapshot }])
    }

    public var getComment: GetComment? {
      get {
        return (snapshot["getComment"] as? Snapshot).flatMap { GetComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getComment")
      }
    }

    public struct GetComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class ListCommentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListComments($filter: ModelCommentFilterInput, $limit: Int, $nextToken: String) {\n  listComments(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      post {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      content\n      createdAt\n      updatedAt\n      postCommentsId\n    }\n    nextToken\n  }\n}"

  public var filter: ModelCommentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelCommentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listComments", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listComments: ListComment? = nil) {
      self.init(snapshot: ["__typename": "Query", "listComments": listComments.flatMap { $0.snapshot }])
    }

    public var listComments: ListComment? {
      get {
        return (snapshot["listComments"] as? Snapshot).flatMap { ListComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listComments")
      }
    }

    public struct ListComment: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelCommentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("post", type: .object(Post.selections)),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var post: Post? {
          get {
            return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "post")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var postCommentsId: GraphQLID? {
          get {
            return snapshot["postCommentsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "postCommentsId")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateBlogSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateBlog($filter: ModelSubscriptionBlogFilterInput) {\n  onCreateBlog(filter: $filter) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionBlogFilterInput?

  public init(filter: ModelSubscriptionBlogFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateBlog", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateBlog: OnCreateBlog? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateBlog": onCreateBlog.flatMap { $0.snapshot }])
    }

    public var onCreateBlog: OnCreateBlog? {
      get {
        return (snapshot["onCreateBlog"] as? Snapshot).flatMap { OnCreateBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateBlog")
      }
    }

    public struct OnCreateBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateBlogSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateBlog($filter: ModelSubscriptionBlogFilterInput) {\n  onUpdateBlog(filter: $filter) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionBlogFilterInput?

  public init(filter: ModelSubscriptionBlogFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateBlog", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateBlog: OnUpdateBlog? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateBlog": onUpdateBlog.flatMap { $0.snapshot }])
    }

    public var onUpdateBlog: OnUpdateBlog? {
      get {
        return (snapshot["onUpdateBlog"] as? Snapshot).flatMap { OnUpdateBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateBlog")
      }
    }

    public struct OnUpdateBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteBlogSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteBlog($filter: ModelSubscriptionBlogFilterInput) {\n  onDeleteBlog(filter: $filter) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        title\n        createdAt\n        updatedAt\n        blogPostsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionBlogFilterInput?

  public init(filter: ModelSubscriptionBlogFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteBlog", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteBlog.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteBlog: OnDeleteBlog? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteBlog": onDeleteBlog.flatMap { $0.snapshot }])
    }

    public var onDeleteBlog: OnDeleteBlog? {
      get {
        return (snapshot["onDeleteBlog"] as? Snapshot).flatMap { OnDeleteBlog(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteBlog")
      }
    }

    public struct OnDeleteBlog: GraphQLSelectionSet {
      public static let possibleTypes = ["Blog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .object(Post.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var posts: Post? {
        get {
          return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "posts")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelPostConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Post"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, title: String, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var blogPostsId: GraphQLID? {
            get {
              return snapshot["blogPostsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "blogPostsId")
            }
          }
        }
      }
    }
  }
}

public final class OnCreatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePost($filter: ModelSubscriptionPostFilterInput) {\n  onCreatePost(filter: $filter) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var filter: ModelSubscriptionPostFilterInput?

  public init(filter: ModelSubscriptionPostFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePost", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePost: OnCreatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePost": onCreatePost.flatMap { $0.snapshot }])
    }

    public var onCreatePost: OnCreatePost? {
      get {
        return (snapshot["onCreatePost"] as? Snapshot).flatMap { OnCreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePost")
      }
    }

    public struct OnCreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePost($filter: ModelSubscriptionPostFilterInput) {\n  onUpdatePost(filter: $filter) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var filter: ModelSubscriptionPostFilterInput?

  public init(filter: ModelSubscriptionPostFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePost", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePost: OnUpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePost": onUpdatePost.flatMap { $0.snapshot }])
    }

    public var onUpdatePost: OnUpdatePost? {
      get {
        return (snapshot["onUpdatePost"] as? Snapshot).flatMap { OnUpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePost")
      }
    }

    public struct OnUpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class OnDeletePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePost($filter: ModelSubscriptionPostFilterInput) {\n  onDeletePost(filter: $filter) {\n    __typename\n    id\n    title\n    blog {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    comments {\n      __typename\n      items {\n        __typename\n        id\n        content\n        createdAt\n        updatedAt\n        postCommentsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n    blogPostsId\n  }\n}"

  public var filter: ModelSubscriptionPostFilterInput?

  public init(filter: ModelSubscriptionPostFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePost", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePost: OnDeletePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePost": onDeletePost.flatMap { $0.snapshot }])
    }

    public var onDeletePost: OnDeletePost? {
      get {
        return (snapshot["onDeletePost"] as? Snapshot).flatMap { OnDeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePost")
      }
    }

    public struct OnDeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("blog", type: .object(Blog.selections)),
        GraphQLField("comments", type: .object(Comment.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var blog: Blog? {
        get {
          return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "blog")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var blogPostsId: GraphQLID? {
        get {
          return snapshot["blogPostsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "blogPostsId")
        }
      }

      public struct Blog: GraphQLSelectionSet {
        public static let possibleTypes = ["Blog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("posts", type: .object(Post.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, posts: Post? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var posts: Post? {
          get {
            return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "posts")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Post: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelPostConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelCommentConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelCommentConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Comment", "id": id, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var postCommentsId: GraphQLID? {
            get {
              return snapshot["postCommentsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "postCommentsId")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateComment($filter: ModelSubscriptionCommentFilterInput) {\n  onCreateComment(filter: $filter) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var filter: ModelSubscriptionCommentFilterInput?

  public init(filter: ModelSubscriptionCommentFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateComment", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateComment: OnCreateComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateComment": onCreateComment.flatMap { $0.snapshot }])
    }

    public var onCreateComment: OnCreateComment? {
      get {
        return (snapshot["onCreateComment"] as? Snapshot).flatMap { OnCreateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateComment")
      }
    }

    public struct OnCreateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateComment($filter: ModelSubscriptionCommentFilterInput) {\n  onUpdateComment(filter: $filter) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var filter: ModelSubscriptionCommentFilterInput?

  public init(filter: ModelSubscriptionCommentFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateComment", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateComment: OnUpdateComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateComment": onUpdateComment.flatMap { $0.snapshot }])
    }

    public var onUpdateComment: OnUpdateComment? {
      get {
        return (snapshot["onUpdateComment"] as? Snapshot).flatMap { OnUpdateComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateComment")
      }
    }

    public struct OnUpdateComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteCommentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteComment($filter: ModelSubscriptionCommentFilterInput) {\n  onDeleteComment(filter: $filter) {\n    __typename\n    id\n    post {\n      __typename\n      id\n      title\n      blog {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      comments {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n      blogPostsId\n    }\n    content\n    createdAt\n    updatedAt\n    postCommentsId\n  }\n}"

  public var filter: ModelSubscriptionCommentFilterInput?

  public init(filter: ModelSubscriptionCommentFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteComment", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteComment: OnDeleteComment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteComment": onDeleteComment.flatMap { $0.snapshot }])
    }

    public var onDeleteComment: OnDeleteComment? {
      get {
        return (snapshot["onDeleteComment"] as? Snapshot).flatMap { OnDeleteComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteComment")
      }
    }

    public struct OnDeleteComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Comment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("post", type: .object(Post.selections)),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("postCommentsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, post: Post? = nil, content: String, createdAt: String, updatedAt: String, postCommentsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Comment", "id": id, "post": post.flatMap { $0.snapshot }, "content": content, "createdAt": createdAt, "updatedAt": updatedAt, "postCommentsId": postCommentsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var post: Post? {
        get {
          return (snapshot["post"] as? Snapshot).flatMap { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "post")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var postCommentsId: GraphQLID? {
        get {
          return snapshot["postCommentsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "postCommentsId")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("blog", type: .object(Blog.selections)),
          GraphQLField("comments", type: .object(Comment.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("blogPostsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, blog: Blog? = nil, comments: Comment? = nil, createdAt: String, updatedAt: String, blogPostsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "title": title, "blog": blog.flatMap { $0.snapshot }, "comments": comments.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "blogPostsId": blogPostsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var blog: Blog? {
          get {
            return (snapshot["blog"] as? Snapshot).flatMap { Blog(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "blog")
          }
        }

        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var blogPostsId: GraphQLID? {
          get {
            return snapshot["blogPostsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "blogPostsId")
          }
        }

        public struct Blog: GraphQLSelectionSet {
          public static let possibleTypes = ["Blog"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Blog", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelCommentConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelCommentConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}
