//
//  Constants.swift
//  RainyShiny
//
//  Created by Tom Dobson on 7/9/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "2f1099029c207a254db4b053b691c2e1"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)32.7157\(LONGITUDE)-117.1611\(APP_ID)\(API_KEY)"
let FORECAST_WEATHER_URL = "\(FORECAST_URL)\(LATITUDE)32.7157\(LONGITUDE)-117.1611\(APP_ID)\(API_KEY)"

