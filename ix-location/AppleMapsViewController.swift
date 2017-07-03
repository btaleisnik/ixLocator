//
//  AppleMapsViewController.swift
//  ix-location
//
//  Created by Brandon Taleisnik on 7/3/17.
//  Copyright © 2017 Brandon Taleisnik. All rights reserved.
//

import UIKit
import MapKit

class AppleMapsViewController: UIViewController {

    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(latitude: -33.918861,longitude: 18.423300)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

