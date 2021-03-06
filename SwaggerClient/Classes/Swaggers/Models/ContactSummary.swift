//
// ContactSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Contact Summary Object is used to briefly represent a contact from your address book. It can be seen in several places throughout this API. Here are the properties: */
open class ContactSummary: JSONEncodable {

    /** Integer ID. Read-only. */
    public var id: Int32?
    /** Salutation, such as Mr, Mrs, or Dr */
    public var _prefix: String?
    /** First name or given name */
    public var firstName: String?
    /** Middle or second name */
    public var middleName: String?
    /** Last name or surname */
    public var lastName: String?
    /** Suffix, such as &#39;Jr.&#39;, &#39;Sr.&#39;, &#39;II&#39;, or &#39;III&#39; */
    public var suffix: String?
    /** Nickname, or a shortened informal version of the contact&#39;s name */
    public var nickname: String?
    /** Name of the contact&#39;s company */
    public var company: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["prefix"] = self._prefix
        nillableDictionary["first_name"] = self.firstName
        nillableDictionary["middle_name"] = self.middleName
        nillableDictionary["last_name"] = self.lastName
        nillableDictionary["suffix"] = self.suffix
        nillableDictionary["nickname"] = self.nickname
        nillableDictionary["company"] = self.company

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
