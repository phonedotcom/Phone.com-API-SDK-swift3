//
// CallerIdPhoneNumber.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Here are all of the properties you can expect for Caller ID objects: */
open class CallerIdPhoneNumber: JSONEncodable {

    /** Name that this number will be associated with. Must be no longer than 15 characters, and can only contain English letters, numbers, spaces, and commas. */
    public var name: String?
    /** Can be \&quot;business\&quot; or \&quot;personal\&quot; */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
