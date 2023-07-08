//import Foundation
//
//final class GraphQLResponseGenerator: GraphQLResultAccumulator {
//  func accept(scalar: JSONValueAny, info: GraphQLResolveInfo) -> JSONValueAny {
//    return scalar
//  }
//  
//  func acceptNullValue(info: GraphQLResolveInfo) -> JSONValueAny {
//    return NSNull()
//  }
//  
//  func accept(list: [JSONValueAny], info: GraphQLResolveInfo) -> JSONValueAny {
//    return list
//  }
//  
//  func accept(fieldEntry: JSONValueAny, info: GraphQLResolveInfo) -> (key: String, value: JSONValueAny) {
//    return (info.responseKeyForField, fieldEntry)
//  }
//  
//  func accept(fieldEntries: [(key: String, value: JSONValueAny)], info: GraphQLResolveInfo) -> JSONValueAny {
//    return JSONObject(fieldEntries)
//  }
//  
//  func finish(rootValue: JSONValueAny, info: GraphQLResolveInfo) throws -> JSONObject {
//    return rootValue as! JSONObject
//  }
//}
