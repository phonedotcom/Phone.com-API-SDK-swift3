//
// PricingFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Pricing Object is identical to the Pricing Summary Object. The Pricing Summary Object is used to briefly represent a pricing plan. Here are the properties: */
open class PricingFull: JSONEncodable {

    /** Integer ID of this object. */
    public var id: Int32?
    /** Pricing Object */
    public var pricing: PricingObject?
    /** Phone.com API Account (VoIP) ID */
    public var voipId: Int32?
    /** Reason this pricing plan is applied */
    public var reason: String?
    /** Name of the person / process who added this pricing plan to the subaccount */
    public var who: String?
    /** Pricing plan expiration timestamp in unix format. If pricing plan never expires, this item will not be returned */
    public var expireDate: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["pricing"] = self.pricing?.encodeToJSON()
        nillableDictionary["voip_id"] = self.voipId?.encodeToJSON()
        nillableDictionary["reason"] = self.reason
        nillableDictionary["who"] = self.who
        nillableDictionary["expire_date"] = self.expireDate

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}