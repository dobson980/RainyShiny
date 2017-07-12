//
//  Location.swift
//  RainyShiny
//
//  Created by Tom Dobson on 7/11/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
