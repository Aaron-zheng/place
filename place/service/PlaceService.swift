//
//  PlaceService.swift
//  place
//
//  Created by Aaron on 28/12/2017.
//  Copyright © 2017 sightcorner. All rights reserved.
//

import Foundation
import SQLite
import UIKit


public var places: Array<Place> = []

class PlaceService {
    

    func getPlace() -> Array<Place> {
        
        if places.count > 0 {
            return places
        }
        
        do {
            let sql = "select name,tld,cca2,ccn3,cca3,cioc,currency,callingCode,capital,region,subregion,languages,latlng,area from info";
            for each in try getDB().prepare(sql) {
                let place = Place()
                place.name = (each[0] as! String)
                place.name = place.name.split(separator: ",")[0].description
                place.tld = each[1] as! String
                place.cca2 = each[2] as! String
                place.ccn3 = each[3] as! String
                place.cca3 = each[4] as! String
                place.cioc = each[5] as! String
                place.currency = each[6] as! String
                place.callingCode = each[7] as! String
                place.capital = each[8] as! String
                place.region = each[9] as! String
                place.subregion = each[10] as! String
                place.languages = each[11] as! String
                place.latlng = each[12] as! String
                place.area = each[13] as! String
                places.append(place)
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return places
    }
    
}
