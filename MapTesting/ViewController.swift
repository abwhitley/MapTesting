//
//  ViewController.swift
//  MapTesting
//
//  Created by Austins Work on 5/26/17.
//  Copyright © 2017 AustinWhitleyWork. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate{
    var mapView: GMSMapView {
        return view as! GMSMapView
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        view = mapView

    }
    
    override func viewDidLoad() {
        
        let locationManager : CLLocationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        mapView.isMyLocationEnabled = true
        if let myLocation = mapView.myLocation{
            print("User's location: \(myLocation)")
            
        } else {
            print("User's location is unknown")
        }
        
        
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        
        
        
        
    }

}


