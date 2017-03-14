//
// AccountsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AccountsAPI: APIBase {
    /**
     Retrieve details of an individual account
     
     - parameter accountId: (path) Account ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccount(accountId: Int32, completion: @escaping ((_ data: AccountFull?,_ error: Error?) -> Void)) {
        getAccountWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve details of an individual account
     - GET /accounts/{accountId}
     - This service shows the details of an individual account. See Accounts for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "password" : "aeiou",
  "billing_contact" : "",
  "contact" : {
    "address" : {
      "line_1" : "aeiou",
      "line_2" : "aeiou",
      "country" : "aeiou",
      "province" : "aeiou",
      "city" : "aeiou",
      "postal_code" : "aeiou"
    },
    "phone" : "aeiou",
    "name" : "aeiou",
    "company" : "aeiou",
    "primary_email" : "aeiou",
    "fax" : "aeiou",
    "alternate_email" : "aeiou"
  },
  "name" : "aeiou",
  "master_account" : {
    "name" : "aeiou",
    "id" : 123
  },
  "id" : 123,
  "username" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 

     - returns: RequestBuilder<AccountFull> 
     */
    open class func getAccountWithRequestBuilder(accountId: Int32) -> RequestBuilder<AccountFull> {
        var path = "/accounts/{accountId}"
        path = path.replacingOccurrences(of: "{accountId}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AccountFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of accounts visible to the authenticated user or client
     
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccounts(filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListAccounts?,_ error: Error?) -> Void)) {
        listAccountsWithRequestBuilder(filtersId: filtersId, sortId: sortId, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of accounts visible to the authenticated user or client
     - GET /accounts
     - This service lists the accounts accessible to the authenticated client. In most cases, there will only be one such account. See Accounts for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "total" : 123,
  "offset" : 123,
  "limit" : 123,
  "filters" : {
    "id" : "aeiou"
  },
  "sort" : {
    "id" : "aeiou"
  },
  "items" : [ {
    "password" : "aeiou",
    "billing_contact" : "",
    "contact" : {
      "address" : {
        "line_1" : "aeiou",
        "line_2" : "aeiou",
        "country" : "aeiou",
        "province" : "aeiou",
        "city" : "aeiou",
        "postal_code" : "aeiou"
      },
      "phone" : "aeiou",
      "name" : "aeiou",
      "company" : "aeiou",
      "primary_email" : "aeiou",
      "fax" : "aeiou",
      "alternate_email" : "aeiou"
    },
    "name" : "aeiou",
    "master_account" : {
      "name" : "aeiou",
      "id" : 123
    },
    "id" : 123,
    "username" : "aeiou"
  } ]
}}]
     
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListAccounts> 
     */
    open class func listAccountsWithRequestBuilder(filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListAccounts> {
        let path = "/accounts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filters[id]": filtersId, 
            "sort[id]": sortId, 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "fields": fields
        ])
        

        let requestBuilder: RequestBuilder<ListAccounts>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
