//
//  QuesoInterfaceController.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 14/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelqueso: WKInterfaceLabel!
    @IBOutlet var boton: WKInterfaceButton!
    var queso = String()
    
    var tamaño = String()
    var masa = String()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let valoresRecibidos = context as! Datos
        tamaño = valoresRecibidos.tamaño
        masa = valoresRecibidos.masa
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func escogerQueso(value: Float) {
        let t1 = "Sin queso"
        let t2 = "Mozarela"
        let t3 = "Cheddar"
        let t4 = "Parmesano"
        switch value{
        case 1:
            labelqueso.setText(t1)
            queso = t1
            boton.setAlpha(1)
        case 2:
            labelqueso.setText(t2)
            queso = t2
            boton.setAlpha(1)
        case 3:
            labelqueso.setText(t3)
            queso = t3
            boton.setAlpha(1)
        case 4:
            labelqueso.setText(t4)
            queso = t4
            boton.setAlpha(1)
        default:
            labelqueso.setText("Sin escoger")
            boton.setAlpha(0)
        }
    }

    @IBAction func enviarDatos() {
        let dato = Datos(t: tamaño, m: masa, q: queso, ingre:[])
        pushControllerWithName("Ingredientes5", context: dato)
    }
}
