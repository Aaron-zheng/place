//
//  Utility.swift
//  place
//
//  Created by Aaron on 28/12/2017.
//  Copyright © 2017 sightcorner. All rights reserved.
//

import Foundation
import SQLite

private let path = Bundle.main.path(forResource: "place", ofType: "sqlite")
private var db: Connection?
public func getDB() -> Connection {
    if db == nil {
        do {
            db = try Connection(path!)
        } catch {
            print(error.localizedDescription)
        }
        
    }
    return db!
}
