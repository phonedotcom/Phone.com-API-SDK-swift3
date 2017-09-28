//
// GroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class GroupsAPI: APIBase {
    /**
     Add a new contact group to an account extension.
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter data: (body) Group data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAccountExtensionContactGroup(accountId: Int32, extensionId: Int32, data: CreateGroupParams, completion: @escaping ((_ data: GroupFull?,_ error: Error?) -> Void)) {
        createAccountExtensionContactGroupWithRequestBuilder(accountId: accountId, extensionId: extensionId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Add a new contact group to an account extension.
     - POST /accounts/{account_id}/extensions/{extension_id}/contact-groups
     - Add a new contact group to an account extension. See Account Contact Groups for details on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "id" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter data: (body) Group data 

     - returns: RequestBuilder<GroupFull> 
     */
    open class func createAccountExtensionContactGroupWithRequestBuilder(accountId: Int32, extensionId: Int32, data: CreateGroupParams) -> RequestBuilder<GroupFull> {
        var path = "/accounts/{account_id}/extensions/{extension_id}/contact-groups"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{extension_id}", with: "\(extensionId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a contact group from the address book.
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAccountExtensionContactGroup(accountId: Int32, extensionId: Int32, groupId: Int32, completion: @escaping ((_ data: DeleteEntry?,_ error: Error?) -> Void)) {
        deleteAccountExtensionContactGroupWithRequestBuilder(accountId: accountId, extensionId: extensionId, groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Delete a contact group from the address book.
     - DELETE /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}
     - Delete a contact group from the address book. See Account Contact Groups for details on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "success" : true
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 

     - returns: RequestBuilder<DeleteEntry> 
     */
    open class func deleteAccountExtensionContactGroupWithRequestBuilder(accountId: Int32, extensionId: Int32, groupId: Int32) -> RequestBuilder<DeleteEntry> {
        var path = "/accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{extension_id}", with: "\(extensionId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{group_id}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeleteEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve the information of a contact group.
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountExtensionContactGroup(accountId: Int32, extensionId: Int32, groupId: Int32, completion: @escaping ((_ data: GroupFull?,_ error: Error?) -> Void)) {
        getAccountExtensionContactGroupWithRequestBuilder(accountId: accountId, extensionId: extensionId, groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve the information of a contact group.
     - GET /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}
     - Retrieve the information of a contact group. See Account Contact Groups for details on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "id" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 

     - returns: RequestBuilder<GroupFull> 
     */
    open class func getAccountExtensionContactGroupWithRequestBuilder(accountId: Int32, extensionId: Int32, groupId: Int32) -> RequestBuilder<GroupFull> {
        var path = "/accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{extension_id}", with: "\(extensionId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{group_id}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Show a list of contact groups belonging to an extension.
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersName: (query) Name filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortName: (query) Name sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountExtensionContactGroups(accountId: Int32, extensionId: Int32, filtersId: [String]? = nil, filtersName: [String]? = nil, sortId: String? = nil, sortName: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListGroups?,_ error: Error?) -> Void)) {
        listAccountExtensionContactGroupsWithRequestBuilder(accountId: accountId, extensionId: extensionId, filtersId: filtersId, filtersName: filtersName, sortId: sortId, sortName: sortName, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Show a list of contact groups belonging to an extension.
     - GET /accounts/{account_id}/extensions/{extension_id}/contact-groups
     - Show a list of contact groups belonging to an extension. See Account Contact Groups for details on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "offset" : 6,
  "limit" : 1,
  "filters" : {
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "sort" : {
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "items" : [ {
    "name" : "aeiou",
    "id" : 5
  } ]
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersName: (query) Name filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortName: (query) Name sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListGroups> 
     */
    open class func listAccountExtensionContactGroupsWithRequestBuilder(accountId: Int32, extensionId: Int32, filtersId: [String]? = nil, filtersName: [String]? = nil, sortId: String? = nil, sortName: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListGroups> {
        var path = "/accounts/{account_id}/extensions/{extension_id}/contact-groups"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{extension_id}", with: "\(extensionId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filters[id]": filtersId, 
            "filters[name]": filtersName, 
            "sort[id]": sortId, 
            "sort[name]": sortName, 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "fields": fields
        ])
        

        let requestBuilder: RequestBuilder<ListGroups>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update the information of a contact group.
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 
     - parameter data: (body) Group data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceAccountExtensionContactGroup(accountId: Int32, extensionId: Int32, groupId: Int32, data: CreateGroupParams, completion: @escaping ((_ data: GroupFull?,_ error: Error?) -> Void)) {
        replaceAccountExtensionContactGroupWithRequestBuilder(accountId: accountId, extensionId: extensionId, groupId: groupId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update the information of a contact group.
     - PUT /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}
     - Update the information of a contact group. See Account Contact Groups for details on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "id" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter extensionId: (path) Extension ID 
     - parameter groupId: (path) Group ID 
     - parameter data: (body) Group data 

     - returns: RequestBuilder<GroupFull> 
     */
    open class func replaceAccountExtensionContactGroupWithRequestBuilder(accountId: Int32, extensionId: Int32, groupId: Int32, data: CreateGroupParams) -> RequestBuilder<GroupFull> {
        var path = "/accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{extension_id}", with: "\(extensionId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{group_id}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
