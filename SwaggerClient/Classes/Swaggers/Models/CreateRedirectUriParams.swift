//
// CreateRedirectUriParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreateRedirectUriParams: JSONEncodable {

    /** Redirect URI string for use in redirect-based flows such as the authorization code and implicit flows */
    public var redirectUri: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["redirect_uri"] = self.redirectUri

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
