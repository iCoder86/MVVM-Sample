//
//  Constants.swift
//  MVVMTest
//
//  Created by Mehul on 31/12/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import Foundation

//MARK:- URLS
let BaseURL = "https://api.openweathermap.org/data/2.5/"

let uWeatherList = BaseURL+"weather?"
let uForecast = BaseURL+"forecast?"

//MARK:- Constant Key
let kCity = "city"
let kAPIToken = "c6e381d8c7ff98f0fee43775817cf6ad"
//MARK:- Clousers
typealias voidCloser = ()->()
typealias successHandler = (_ result:BaseModel)->()
typealias failerHandler = (_ error:requestError)->()

