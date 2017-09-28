//
// TrunksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TrunksAPI: APIBase {
    /**
     Add a trunk record with SIP information.
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) Trunk data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAccountTrunk(accountId: Int32, data: CreateTrunkParams, completion: @escaping ((_ data: TrunkFull?,_ error: Error?) -> Void)) {
        createAccountTrunkWithRequestBuilder(accountId: accountId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Add a trunk record with SIP information.
     - POST /accounts/{account_id}/trunks
     - Add a trunk record with SIP information. See Account Trunks for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "error_message" : "",
  "max_minutes_per_month" : 1,
  "greeting" : {
    "name" : "aeiou",
    "id" : 5
  },
  "codecs" : [ "aeiou" ],
  "name" : "aeiou",
  "id" : 0,
  "max_concurrent_calls" : 6,
  "uri" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) Trunk data 

     - returns: RequestBuilder<TrunkFull> 
     */
    open class func createAccountTrunkWithRequestBuilder(accountId: Int32, data: CreateTrunkParams) -> RequestBuilder<TrunkFull> {
        var path = "/accounts/{account_id}/trunks"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TrunkFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a trunk from account.
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAccountTrunk(accountId: Int32, trunkId: Int32, completion: @escaping ((_ data: DeleteEntry?,_ error: Error?) -> Void)) {
        deleteAccountTrunkWithRequestBuilder(accountId: accountId, trunkId: trunkId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Delete a trunk from account.
     - DELETE /accounts/{account_id}/trunks/{trunk_id}
     - Delete a trunk from account. See Account Trunks for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "success" : true
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 

     - returns: RequestBuilder<DeleteEntry> 
     */
    open class func deleteAccountTrunkWithRequestBuilder(accountId: Int32, trunkId: Int32) -> RequestBuilder<DeleteEntry> {
        var path = "/accounts/{account_id}/trunks/{trunk_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{trunk_id}", with: "\(trunkId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeleteEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Show details of an individual trunk.
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountTrunk(accountId: Int32, trunkId: Int32, completion: @escaping ((_ data: TrunkFull?,_ error: Error?) -> Void)) {
        getAccountTrunkWithRequestBuilder(accountId: accountId, trunkId: trunkId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Show details of an individual trunk.
     - GET /accounts/{account_id}/trunks/{trunk_id}
     - Show details of an individual trunk. See Account Trunks for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "error_message" : "",
  "max_minutes_per_month" : 1,
  "greeting" : {
    "name" : "aeiou",
    "id" : 5
  },
  "codecs" : [ "aeiou" ],
  "name" : "aeiou",
  "id" : 0,
  "max_concurrent_calls" : 6,
  "uri" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 

     - returns: RequestBuilder<TrunkFull> 
     */
    open class func getAccountTrunkWithRequestBuilder(accountId: Int32, trunkId: Int32) -> RequestBuilder<TrunkFull> {
        var path = "/accounts/{account_id}/trunks/{trunk_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{trunk_id}", with: "\(trunkId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TrunkFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of trunks for an account.
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersName: (query) Name filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortName: (query) Name sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountTrunks(accountId: Int32, filtersId: [String]? = nil, filtersName: [String]? = nil, sortId: String? = nil, sortName: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListTrunks?,_ error: Error?) -> Void)) {
        listAccountTrunksWithRequestBuilder(accountId: accountId, filtersId: filtersId, filtersName: filtersName, sortId: sortId, sortName: sortName, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of trunks for an account.
     - GET /accounts/{account_id}/trunks
     - Get a list of trunks for an account. See Account Trunks for more info on the properties.
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
    "error_message" : "",
    "max_minutes_per_month" : 2,
    "greeting" : {
      "name" : "aeiou",
      "id" : 7
    },
    "codecs" : [ "aeiou" ],
    "name" : "aeiou",
    "id" : 5,
    "max_concurrent_calls" : 5,
    "uri" : "aeiou"
  } ]
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersName: (query) Name filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortName: (query) Name sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListTrunks> 
     */
    open class func listAccountTrunksWithRequestBuilder(accountId: Int32, filtersId: [String]? = nil, filtersName: [String]? = nil, sortId: String? = nil, sortName: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListTrunks> {
        var path = "/accounts/{account_id}/trunks"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
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
        

        let requestBuilder: RequestBuilder<ListTrunks>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace parameters in a trunk.
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 
     - parameter data: (body) Trunk data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceAccountTrunk(accountId: Int32, trunkId: Int32, data: CreateTrunkParams, completion: @escaping ((_ data: TrunkFull?,_ error: Error?) -> Void)) {
        replaceAccountTrunkWithRequestBuilder(accountId: accountId, trunkId: trunkId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Replace parameters in a trunk.
     - PUT /accounts/{account_id}/trunks/{trunk_id}
     - Replace parameters in a trunk. See Account Trunks for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "error_message" : "",
  "max_minutes_per_month" : 1,
  "greeting" : {
    "name" : "aeiou",
    "id" : 5
  },
  "codecs" : [ "aeiou" ],
  "name" : "aeiou",
  "id" : 0,
  "max_concurrent_calls" : 6,
  "uri" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter trunkId: (path) Trunk ID 
     - parameter data: (body) Trunk data 

     - returns: RequestBuilder<TrunkFull> 
     */
    open class func replaceAccountTrunkWithRequestBuilder(accountId: Int32, trunkId: Int32, data: CreateTrunkParams) -> RequestBuilder<TrunkFull> {
        var path = "/accounts/{account_id}/trunks/{trunk_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{trunk_id}", with: "\(trunkId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TrunkFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
