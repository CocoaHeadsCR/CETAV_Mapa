//
//  CargadorDatos.swift
//  CETAV
//
//  Created by Esteban Torres on 12/2/16.
//  Copyright © 2016 Esteban Torres. All rights reserved.
//

import MapKit

class CargadorDatos {
  var lugares: [Punto]
  
  init(lugares: [Punto]=[]) {
    self.lugares = lugares
  }
  
  func cargarDatos(callback: [Punto] -> ()) -> Void {
    let policia = Punto(coordenadas: CLLocationCoordinate2D(latitude: 9.889948, longitude: -84.036123), titulo: "Delegación de Policía", subtitulo: "Río Azul")
    let mopt = Punto(coordenadas: CLLocationCoordinate2D(latitude: 9.889948, longitude: -84.036123), titulo: "Plantel del MOPT", subtitulo: "Bodega 87")
    let iglesia = Punto(coordenadas: CLLocationCoordinate2D(latitude: 9.889948, longitude: -84.036123), titulo: "Filial San Bosco", subtitulo: "Iglesia")
    
    self.lugares.appendContentsOf([policia, mopt, iglesia])
    
    callback(self.lugares)
  }
}