//
// RuleSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RuleSet: JSONEncodable {

    public var filter: RuleSetFilter?
    /** Array of Action Objects. Required. Routes have rule sets, and rule sets have one or more actions. The supported actions are described below: */
    public var actions: [RuleSetAction]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["filter"] = self.filter?.encodeToJSON()
        nillableDictionary["actions"] = self.actions?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
