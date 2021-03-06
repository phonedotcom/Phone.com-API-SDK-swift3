//
// PhoneNumbersRegionFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Region Object may include any of several fields describing the group, as well as the quantity of phone numbers available in that group. Here are the properties: */
open class PhoneNumbersRegionFull: JSONEncodable {

    /** Optional. Integer representing the international calling code for the phone number&#39;s country. */
    public var countryCode: String?
    /** Optional. Area Code, for North American phone numbers. */
    public var npa: Int32?
    /** Optional. Second set of 3 digits, for North American phone numbers. */
    public var nxx: Int32?
    /** Optional. Boolean describing whether the phone numbers in this group are toll free. */
    public var isTollFree: Int32?
    /** Optional. City name. */
    public var city: String?
    /** Optional. Two-letter postal code for the state or province. */
    public var provincePostalCode: String?
    /** Optional. Two-letter postal code for the country. */
    public var countryPostalCode: String?
    /** Integer. Quantity of phone numbers currently available in the given region. */
    public var quantity: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["country_code"] = self.countryCode
        nillableDictionary["npa"] = self.npa?.encodeToJSON()
        nillableDictionary["nxx"] = self.nxx?.encodeToJSON()
        nillableDictionary["is_toll_free"] = self.isTollFree?.encodeToJSON()
        nillableDictionary["city"] = self.city
        nillableDictionary["province_postal_code"] = self.provincePostalCode
        nillableDictionary["country_postal_code"] = self.countryPostalCode
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
