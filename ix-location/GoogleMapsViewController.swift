//
//  GoogleMapsViewController.swift
//  ix-location
//
//  Created by Brandon Taleisnik on 7/3/17.
//  Copyright © 2017 Brandon Taleisnik. All rights reserved.
//

import UIKit
import GoogleMaps

class GoogleMapsViewController: UIViewController, GMSMapViewDelegate {

    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        mapView.delegate = self
//        mapView.isMyLocationEnabled = true


        let camera = GMSCameraPosition.camera(withLatitude: -33.918861,
                                              longitude: 18.423300,
                                              zoom: 14)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        
        mapView.isMyLocationEnabled = true
        view = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

