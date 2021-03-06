//
// FromObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Each entry in a Voicemail&#39;s from list is an object with the following properties: */
open class FromObject: JSONEncodable {

    /** The caller phone number */
    public var number: String?
    /** The name / caller ID of the caller */
    public var name: String?
    /** The city where the caller is from */
    public var city: String?
    /** The state where the caller is from */
    public var state: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["number"] = self.number
        nillableDictionary["name"] = self.name
        nillableDictionary["city"] = self.city
        nillableDictionary["state"] = self.state

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
