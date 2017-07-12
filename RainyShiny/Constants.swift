////
////  Constants.swift
////  RainyShiny
////
////  Created by Tom Dobson on 7/9/17.
////  Copyright © 2017 Dobson Studios. All rights reserved.
////
//
//import Foundation
//
//typealias DownloadComplete = () -> ()
//
//let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
//let LATITUDE = "lat=\(Location.sharedInstance.latitude)"
//let LONGITUDE = "&lon=\(Location.sharedInstance.longitude)"
//let APP_ID = "&appid="
//let API_KEY = "2f1099029c207a254db4b053b691c2e1"
//
//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"
//let FORECAST_WEATHER_URL = "\(FORECAST_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"
//

//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Caleb Stultz on 7/27/16.
//  Copyright © 2016 Caleb Stultz. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat=\(Location.sharedInstance.latitude!)"
let LONGITUDE = "&lon=\(Location.sharedInstance.longitude!)"
let APP_ID = "&appid="
let API_KEY = "42a1771a0b787bf12e734ada0cfc80cb"

typealias DownloadComplete = () -> ()

//let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=32.71&lon=-117.16&appid=42a1771a0b787bf12e734ada0cfc80cb"
//
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=32.71&lon=-117.16&appid=42a1771a0b787bf12e734ada0cfc80cb"

//let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=42a1771a0b787bf12e734ada0cfc80cb"
//
//
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"

let FORECAST_URL = "\(FORECAST_BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"


