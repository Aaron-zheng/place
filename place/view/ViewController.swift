//
//  ViewController.swift
//  place
//
//  Created by Aaron on 27/12/2017.
//  Copyright © 2017 sightcorner. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {
    
    private let placeService = PlaceService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = placeService.getPlace()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

