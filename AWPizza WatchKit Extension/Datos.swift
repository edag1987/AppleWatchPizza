//
//  Datos.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 15/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit

class Datos: NSObject {
    var ingredientesPizza = ["","","","","","","","",""]
    var tamaño = String()
    var masa = String()
    var queso = String()
    
    init(t:String, m:String, q:String, ingre:[String]){
        tamaño = t
        masa = m
        queso = q
        ingredientesPizza = ingre
    }
}
