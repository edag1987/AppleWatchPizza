//
//  MasaInterfaceController.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 14/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelmasa: WKInterfaceLabel!
    @IBOutlet var boton: WKInterfaceButton!
    var masa = String()
    
    var tamaño = String()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        boton.setAlpha(0)
        ///////////////////////////////////////////////////
        let tamaño1 = context as! Datos
        tamaño = tamaño1.tamaño
        ///////////////////////////////////////////////////
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func escogerMasa(value: Float) {
        let t1 = "Delgada"
        let t2 = "Crujiente"
        let t3 = "Gruesa"
        switch value{
        case 1:
            labelmasa.setText(t1)
            masa = t1
            boton.setAlpha(1)
        case 2:
            labelmasa.setText(t2)
            masa = t2
            boton.setAlpha(1)
        case 3:
            labelmasa.setText(t3)
            masa = t3
            boton.setAlpha(1)
        default:
            labelmasa.setText("Sin escoger")
            boton.setAlpha(0)
        }
    }

    @IBAction func botonSiguiente() {
        let datosEnviar = Datos(t: tamaño, m: masa, q: "", ingre:[])
        pushControllerWithName("QuesoController", context: datosEnviar)
    }
    
}