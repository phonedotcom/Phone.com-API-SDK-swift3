//
// ListGroups.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ListGroups: JSONEncodable {

    public var filters: FilterIdNameArray?
    public var sort: SortIdName?
    public var total: Int32?
    public var offset: Int32?
    public var limit: Int32?
    public var items: [GroupFull]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["filters"] = self.filters?.encodeToJSON()
        nillableDictionary["sort"] = self.sort?.encodeToJSON()
        nillableDictionary["total"] = self.total?.encodeToJSON()
        nillableDictionary["offset"] = self.offset?.encodeToJSON()
        nillableDictionary["limit"] = self.limit?.encodeToJSON()
        nillableDictionary["items"] = self.items?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
