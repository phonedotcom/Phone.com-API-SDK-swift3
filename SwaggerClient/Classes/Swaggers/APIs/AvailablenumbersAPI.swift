//
// AvailablenumbersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AvailablenumbersAPI: APIBase {
    /**
     
     
     - parameter filtersPhoneNumber: (query) Phone number filter (optional)
     - parameter filtersCountryCode: (query) Country Code filter (optional)
     - parameter filtersNpa: (query) Area Code filter (North America only) (optional)
     - parameter filtersNxx: (query) 2nd set of 3 digits filter (North America only) (optional)
     - parameter filtersXxxx: (query) NANP XXXX filter (optional)
     - parameter filtersCity: (query) City filter (optional)
     - parameter filtersProvince: (query) State or Province (postal code) filter (optional)
     - parameter filtersCountry: (query) Country (postal code) filter (optional)
     - parameter filtersPrice: (query) Price filter (optional)
     - parameter filtersCategory: (query) Category filter (optional)
     - parameter sortInternal: (query) Internal (quasi-random) sorting (optional)
     - parameter sortPrice: (query) Price sorting (optional)
     - parameter sortPhoneNumber: (query) Phone number sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAvailablePhoneNumbers(filtersPhoneNumber: [String]? = nil, filtersCountryCode: [String]? = nil, filtersNpa: [String]? = nil, filtersNxx: [String]? = nil, filtersXxxx: [String]? = nil, filtersCity: [String]? = nil, filtersProvince: [String]? = nil, filtersCountry: [String]? = nil, filtersPrice: [String]? = nil, filtersCategory: [String]? = nil, sortInternal: String? = nil, sortPrice: String? = nil, sortPhoneNumber: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListAvailableNumbers?,_ error: Error?) -> Void)) {
        listAvailablePhoneNumbersWithRequestBuilder(filtersPhoneNumber: filtersPhoneNumber, filtersCountryCode: filtersCountryCode, filtersNpa: filtersNpa, filtersNxx: filtersNxx, filtersXxxx: filtersXxxx, filtersCity: filtersCity, filtersProvince: filtersProvince, filtersCountry: filtersCountry, filtersPrice: filtersPrice, filtersCategory: filtersCategory, sortInternal: sortInternal, sortPrice: sortPrice, sortPhoneNumber: sortPhoneNumber, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     
     - GET /phone-numbers/available
     - 
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "total" : 123,
  "offset" : 123,
  "limit" : 123,
  "filters" : {
    "country_code" : "aeiou",
    "country" : "aeiou",
    "province" : "aeiou",
    "city" : "aeiou",
    "price" : "aeiou",
    "xxxx" : "aeiou",
    "phone_number" : "aeiou",
    "category" : "aeiou",
    "npa" : "aeiou",
    "nxx" : "aeiou"
  },
  "sort" : {
    "internal" : "aeiou",
    "price" : "aeiou",
    "phone_number" : "aeiou"
  },
  "items" : [ {
    "country_code" : "aeiou",
    "country" : "aeiou",
    "province" : "aeiou",
    "city" : "aeiou",
    "formatted" : "aeiou",
    "price" : 123,
    "xxxx" : "aeiou",
    "phone_number" : "aeiou",
    "is_toll_free" : true,
    "npa" : "aeiou",
    "nxx" : "aeiou"
  } ]
}}]
     
     - parameter filtersPhoneNumber: (query) Phone number filter (optional)
     - parameter filtersCountryCode: (query) Country Code filter (optional)
     - parameter filtersNpa: (query) Area Code filter (North America only) (optional)
     - parameter filtersNxx: (query) 2nd set of 3 digits filter (North America only) (optional)
     - parameter filtersXxxx: (query) NANP XXXX filter (optional)
     - parameter filtersCity: (query) City filter (optional)
     - parameter filtersProvince: (query) State or Province (postal code) filter (optional)
     - parameter filtersCountry: (query) Country (postal code) filter (optional)
     - parameter filtersPrice: (query) Price filter (optional)
     - parameter filtersCategory: (query) Category filter (optional)
     - parameter sortInternal: (query) Internal (quasi-random) sorting (optional)
     - parameter sortPrice: (query) Price sorting (optional)
     - parameter sortPhoneNumber: (query) Phone number sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListAvailableNumbers> 
     */
    open class func listAvailablePhoneNumbersWithRequestBuilder(filtersPhoneNumber: [String]? = nil, filtersCountryCode: [String]? = nil, filtersNpa: [String]? = nil, filtersNxx: [String]? = nil, filtersXxxx: [String]? = nil, filtersCity: [String]? = nil, filtersProvince: [String]? = nil, filtersCountry: [String]? = nil, filtersPrice: [String]? = nil, filtersCategory: [String]? = nil, sortInternal: String? = nil, sortPrice: String? = nil, sortPhoneNumber: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListAvailableNumbers> {
        let path = "/phone-numbers/available"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filters[phone_number]": filtersPhoneNumber, 
            "filters[country_code]": filtersCountryCode, 
            "filters[npa]": filtersNpa, 
            "filters[nxx]": filtersNxx, 
            "filters[xxxx]": filtersXxxx, 
            "filters[city]": filtersCity, 
            "filters[province]": filtersProvince, 
            "filters[country]": filtersCountry, 
            "filters[price]": filtersPrice, 
            "filters[category]": filtersCategory, 
            "sort[internal]": sortInternal, 
            "sort[price]": sortPrice, 
            "sort[phone_number]": sortPhoneNumber, 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "fields": fields
        ])
        

        let requestBuilder: RequestBuilder<ListAvailableNumbers>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
