//
//  Forecast.swift
//  RainyShiny
//
//  Created by Tom Dobson on 7/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit
import Alamofire

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}

class Forecast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTempt: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init (weatherDict: Dictionary<String, AnyObject>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                
                let kelvinToFarenheitPreDiv = (min * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDiv/10))
                self._lowTemp = "\(kelvinToFarenheit)"
            }
            
            if let max = temp["max"] as? Double {
                let kelvinToFarenheitPreDiv = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDiv/10))
                self._highTemp = "\(kelvinToFarenheit)"
            }
            
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
            
        }
        
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
        
        
    }
    
    
    
    
    
}


