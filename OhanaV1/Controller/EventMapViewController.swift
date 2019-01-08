//
//  EventMapViewController.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/7/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class EventMapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 30000
    var eventCoordinate: CLLocationCoordinate2D?
    
    let annotationLocations = [
        ["title": "Day out with Tomas", "latitude": 37.042380, "longitude": -122.058680],
        ["title": "Asian Art Musem Free Day", "latitude": 37.780289, "longitude": -122.415973],
        ["title": "Alameda Latern Light Festival", "latitude": 37.6725, "longitude": -121.883],
        ["title": "2-Hour Twilight Cruise", "latitude": 37.813773765264, "longitude": -122.40219030541],
        ["title": "Chocolate Festival", "latitude": 37.766432465385, "longitude": -122.46663709472],
        ["title": "Preschool Performance Series", "latitude": 37.821556, "longitude": -121.997496],
        ["title": "Great Music from Great Ballets", "latitude": 37.899485, "longitude": -122.062456],
        ["title": "FUN ON THE FARM! OLD FASHIONED GAMES", "latitude": 37.7351, "longitude": -121.9511]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // mapView.delegate = self
        
        setupAnnotationsOnMap(locations: annotationLocations)
        setRegionOnMap()
    }
    
    func setRegionOnMap() {
        let center = CLLocationCoordinate2D(latitude: 37.550201, longitude: -121.980827)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: 100000, longitudinalMeters: 100000)
        mapView.setRegion(region, animated: true)
    }
    
    func setupAnnotationsOnMap(locations: [[String : Any]] ) {
        for location in locations {
            let eventAnnoation = MKPointAnnotation()
            eventAnnoation.title = location["title"] as? String
            eventAnnoation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(eventAnnoation)
        }
    }
}

extension EventMapViewController: CLLocationManagerDelegate, MKMapViewDelegate {
//
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        if let eventAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
//            eventAnnotationView.animatesWhenAdded = true
//            eventAnnotationView.titleVisibility = .adaptive
//            eventAnnotationView.subtitleVisibility = .adaptive
//
//            return eventAnnotationView
//        }
//
//        return nil
//
//
//    }
}
