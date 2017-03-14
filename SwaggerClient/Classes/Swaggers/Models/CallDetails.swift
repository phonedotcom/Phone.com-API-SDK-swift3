//
// CallDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Each item in the &#39;details&#39; record may contain the following properties: */
open class CallDetails: JSONEncodable {
    /** UNIX time stamp representing the UTC time that this call item starts */
    public var startTime: Int32?
    /** Endpoint for this call item, such as call, voicemail, fax, menu, menu item, queue ... */
    public var type: String?
    /** ID associated with this call item endpoint (type) */
    public var idValue: Int32?
    /** Same as account id */
    public var voipId: Int32?
    /** Same as account extension id */
    public var voipPhoneId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["start_time"] = self.startTime?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["id_value"] = self.idValue?.encodeToJSON()
        nillableDictionary["voip_id"] = self.voipId?.encodeToJSON()
        nillableDictionary["voip_phone_id"] = self.voipPhoneId?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
