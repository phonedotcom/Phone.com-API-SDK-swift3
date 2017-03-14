//
// ContactFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Contact Object includes all of the properties in the Contact Summary Object, along with several more: */
open class ContactFull: JSONEncodable {
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
    /** Suffix, such as \&quot;Jr.\&quot;, \&quot;Sr.\&quot;, \&quot;II\&quot;, or \&quot;III\&quot; */
    public var suffix: String?
    /** Nickname, or a shortened informal version of the contact&#39;s name */
    public var nickname: String?
    /** Name of the contact&#39;s company */
    public var company: String?
    /** Phonetic first name. Useful for remembering how to pronounce the contact&#39;s name. */
    public var phoneticFirstName: String?
    /** Phonetic middle name. Useful for remembering how to pronounce the contact&#39;s name. */
    public var phoneticMiddleName: String?
    /** Phonetic last name. Useful for remembering how to pronounce the contact&#39;s name. */
    public var phoneticLastName: String?
    /** Name of the contact&#39;s department */
    public var department: String?
    /** Contact&#39;s job title */
    public var jobTitle: String?
    /** Array of Contact Email Objects. See below for details. */
    public var emails: [Email]?
    /** Array of Contact Phone Number Objects. See below for details. */
    public var phoneNumbers: [PhoneNumberContact]?
    /** Array of Contact Address Objects. See below for details. */
    public var addresses: [AddressListContacts]?
    public var group: GroupListContacts?
    /** Integer UNIX timestamp when the contact was created. Read-only. */
    public var createdAt: Int32?
    /** Integer UNIX timestamp when the contact was created. Read-only. */
    public var updatedAt: Int32?

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
        nillableDictionary["phonetic_first_name"] = self.phoneticFirstName
        nillableDictionary["phonetic_middle_name"] = self.phoneticMiddleName
        nillableDictionary["phonetic_last_name"] = self.phoneticLastName
        nillableDictionary["department"] = self.department
        nillableDictionary["job_title"] = self.jobTitle
        nillableDictionary["emails"] = self.emails?.encodeToJSON()
        nillableDictionary["phone_numbers"] = self.phoneNumbers?.encodeToJSON()
        nillableDictionary["addresses"] = self.addresses?.encodeToJSON()
        nillableDictionary["group"] = self.group?.encodeToJSON()
        nillableDictionary["created_at"] = self.createdAt?.encodeToJSON()
        nillableDictionary["updated_at"] = self.updatedAt?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
