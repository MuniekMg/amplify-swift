//import Foundation
//
//final class GraphQLResultNormalizer: GraphQLResultAccumulator {
//  private var records: RecordSet = [:]
//  
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
//    return (info.cacheKeyForField, fieldEntry)
//  }
//  
//  func accept(fieldEntries: [(key: String, value: JSONValueAny)], info: GraphQLResolveInfo) throws -> JSONValueAny {
//    let cachePath = joined(path: info.cachePath)
//
//    let object = JSONObject(fieldEntries)
//    records.merge(record: Record(key: cachePath, object))
//    
//    return Reference(key: cachePath)
//  }
//  
//  func finish(rootValue: JSONValueAny, info: GraphQLResolveInfo) throws -> RecordSet {
//    return records
//  }
//}
