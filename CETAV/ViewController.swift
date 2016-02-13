//
//  ViewController.swift
//  CETAV
//
//  Created by Esteban Torres on 12/2/16.
//  Copyright © 2016 Esteban Torres. All rights reserved.
//

//// Native Frameworks
import UIKit
import MapKit

class ViewController: UIViewController {

  // MARK: Propiedades de UI
  @IBOutlet weak var mapa: MKMapView!
  
  // MARK: Propiedades
  let manager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Tenemos que solicitar al usuario permiso para acceder a su ubicación
    manager.requestWhenInUseAuthorization()
    self.mapa.showsUserLocation = true
    self.mapa.delegate = self
  }
}

// MARK: - MKMapViewDelegate

extension ViewController: MKMapViewDelegate {
  func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
    // Centramos el mapa en el usuario actual
//    mapView.setCenterCoordinate(userLocation.coordinate, animated: true)

    // Centramos el mapa en una región cuyo centro es la ubicación del usuario
    // Y cuya distancia longitudinal y latitudinal es de 2Kms
    let region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 2000, 2000)
    mapView.setRegion(region, animated: true)
  }
}