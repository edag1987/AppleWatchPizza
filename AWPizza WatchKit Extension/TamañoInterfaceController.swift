//
//  TamañoInterfaceController.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 14/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit
import Foundation


class TamañoInterfaceController: WKInterfaceController {

    @IBOutlet var labeltamaño: WKInterfaceLabel!
    @IBOutlet var boton: WKInterfaceButton!
    var tamaño = String()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        boton.setAlpha(0)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func escogerTamaño(value: Float) {
        let t1 = "Pequeña"
        let t2 = "Mediana"
        let t3 = "Grande"
        switch value{
        case 1:
            labeltamaño.setText(t1)
            tamaño = t1
            boton.setAlpha(1)
        case 2:
            labeltamaño.setText(t2)
            tamaño = t2
            boton.setAlpha(1)
        case 3:
            labeltamaño.setText(t3)
            tamaño = t3
            boton.setAlpha(1)
        default:
            labeltamaño.setText("Sin escoger")
            boton.setAlpha(0)
        }
    }

    @IBAction func siguiente() {
        let tamañoEscogido = Datos(t: tamaño, m: "", q: "", ingre:[])
        pushControllerWithName("MasaController", context: tamañoEscogido)
    }
}
