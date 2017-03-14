//
// TrunkFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Trunk Object is identical to the Trunk Summary Object, along with the following: */
open class TrunkFull: JSONEncodable {
    /** Integer Trunk ID. Read-only. */
    public var id: Int32?
    /** Name. Required. */
    public var name: String?
    /** Fully-qualified SIP URI. Required. */
    public var uri: String?
    /** Max concurrent calls. Default is 10. */
    public var maxConcurrentCalls: Int32?
    /** Max minutes per month. Default is 750. */
    public var maxMinutesPerMonth: Int32?
    /** Greeting. Output is a Media Summary Object. Input must be a Media Lookup Object. Must refer to a media recording that has is_hold_music set to FALSE. */
    public var greeting: MediaSummary?
    /** Error Message. Output is a Media Summary Object. Input must be a Media Lookup Object. Must refer to a media recording that has is_hold_music set to FALSE. */
    public var errorMessage: MediaSummary?
    /** Custom audio codec configuration, if any is needed. If provided, must be a simple array containing the prioritized list of desired codecs. Supported codecs are: g711u 64k, g711u 56k, g711a 64k, g711a 56k, g7231, g728, g729, g729A, g729B, g729AB, gms full, rfc2833, t38, ilbc, h263, g722, g722_1, g729D, g729E, amr, amr_wb, efr, evrc, h264, mpeg4, red, cng, SIP Info to 2833 */
    public var codecs: [String]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["uri"] = self.uri
        nillableDictionary["max_concurrent_calls"] = self.maxConcurrentCalls?.encodeToJSON()
        nillableDictionary["max_minutes_per_month"] = self.maxMinutesPerMonth?.encodeToJSON()
        nillableDictionary["greeting"] = self.greeting?.encodeToJSON()
        nillableDictionary["error_message"] = self.errorMessage?.encodeToJSON()
        nillableDictionary["codecs"] = self.codecs?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
