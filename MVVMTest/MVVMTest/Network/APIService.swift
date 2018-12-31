//
//  APIService.swift
//  ForecastWeather
//
//  Created by Chirag on 13/10/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import Foundation
//Get city weather date webcall
//func getWeatherList(param: DataContainer.request, success:@escaping (_ result: DataContainer.Response)->(), failure:@escaping failerHandler) {
//
//    let urlString = uWeatherList + "lat=\(String(describing: param.lat!))&lon=\(String(describing: param.long!))" + "&appid=" + kAPIToken + "&units=metric"
//    guard let url = URL(string: urlString) else {
//        return
//    }
//
//    Request.shared.callService(method: .GET, param: nil, path: url, responseModel: DataContainer.Response.self, success: success , failure: failure)
//}

////Get City forecast data webcall
//func getFiveDayList(param: DataContainer.request, success:@escaping (_ result: CityWeather)->(), failure:@escaping failerHandler) {
//
//    let urlString = uForecast + "lat=\(String(describing: param.lat!))&lon=\(String(describing: param.long!))" + "&appid=" + kAPIToken + "&units=metric" //+ "&cnt=5"
//    guard let url = URL(string: urlString) else {
//        return
//    }
//
//   Request.shared.callService(method: .GET, param: nil, path: url, responseModel: CityWeather.self, success: success, failure: failure)
//}
//
//

// Login
func loginWith(param: Login.request, success:@escaping (_ result:Login.Response)->(), failure:@escaping failerHandler) {
    
    guard let url = URL(string: "https://grindbid.com:8443/api/user/signUpOrlogin") else {
        return
    }

    print(param)
    
//    let jsonEncoder = JSONEncoder()
//    let jsonData = try jsonEncoder.encode(param)
//    let json = String(data: jsonData, encoding: String.Encoding.utf16)
    
//    if let dataParam = param {
//        data = try JSONEncoder().encode(dataParam)
//    }
    
    Request.shared.callService(method: .POST, param: nil, path: url, responseModel: Login.Response.self, success: success, failure: failure)
}
