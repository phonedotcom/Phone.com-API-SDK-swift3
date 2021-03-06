//
// CreatePhoneNumberParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreatePhoneNumberParams: JSONEncodable {

    /** Phone number */
    public var phoneNumber: Any?
    /** Route lookup object */
    public var route: Any?
    /** Phone Name */
    public var name: String?
    /** Block incoming calls */
    public var blockIncoming: String?
    /** Block anonymous calls */
    public var blockAnonymous: String?
    public var callerId: CallerIdPhoneNumber?
    public var smsForwarding: SmsForwardingParams?
    public var callNotifications: CallNotifications?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["phone_number"] = self.phoneNumber
        nillableDictionary["route"] = self.route
        nillableDictionary["name"] = self.name
        nillableDictionary["block_incoming"] = self.blockIncoming
        nillableDictionary["block_anonymous"] = self.blockAnonymous
        nillableDictionary["caller_id"] = self.callerId?.encodeToJSON()
        nillableDictionary["sms_forwarding"] = self.smsForwarding?.encodeToJSON()
        nillableDictionary["call_notifications"] = self.callNotifications?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
