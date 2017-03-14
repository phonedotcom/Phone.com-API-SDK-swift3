//
// ContactSubaccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ContactSubaccount: JSONEncodable {
    /** Contact name */
    public var name: String?
    public var address: Address?
    /** Primary email address. Required. */
    public var primaryEmail: String?
    /** Alternate email address */
    public var alternateEmail: String?
    /** Company name */
    public var company: String?
    /** Phone number. Required. */
    public var phone: String?
    /** Fax number */
    public var fax: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["address"] = self.address?.encodeToJSON()
        nillableDictionary["primary_email"] = self.primaryEmail
        nillableDictionary["alternate_email"] = self.alternateEmail
        nillableDictionary["company"] = self.company
        nillableDictionary["phone"] = self.phone
        nillableDictionary["fax"] = self.fax
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}