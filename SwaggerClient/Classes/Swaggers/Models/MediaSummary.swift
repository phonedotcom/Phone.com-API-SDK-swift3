//
// MediaSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Recording Summary Object is used to briefly represent a media recording. It can be seen in several places throughout this API. Here are the properties: */
open class MediaSummary: JSONEncodable {
    /** Recording ID. Read-only. */
    public var id: Int32?
    /** Name of recording */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
