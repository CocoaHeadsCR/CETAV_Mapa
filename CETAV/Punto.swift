//
//  Punto.swift
//  CETAV
//
//  Created by Esteban Torres on 12/2/16.
//  Copyright © 2016 Esteban Torres. All rights reserved.
//

import MapKit

class Punto {
  let coordenadas: CLLocationCoordinate2D
  let titulo: String
  let subtitulo: String
  
  init(coordenadas: CLLocationCoordinate2D, titulo: String, subtitulo: String) {
    self.coordenadas = coordenadas
    self.titulo = titulo
    self.subtitulo = subtitulo
  }
}