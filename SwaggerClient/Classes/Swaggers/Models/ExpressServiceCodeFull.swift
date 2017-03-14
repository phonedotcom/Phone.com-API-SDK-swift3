//
// ExpressServiceCodeFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Express Service Code Object includes the properties in the Express Service Code Summary Object, along with the following: */
open class ExpressServiceCodeFull: JSONEncodable {
    /** ID */
    public var id: Int32?
    /** An 8-digit number in string format */
    public var expressServiceCode: String?
    /** UNIX time stamp representing the UTC time that the Express Service Code expires. Please note that every time this service is executed, the expire_date is set to now + 24 hours. */
    public var expireDate: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["express_service_code"] = self.expressServiceCode
        nillableDictionary["expire_date"] = self.expireDate?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}