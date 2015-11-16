//
//  ConfirmarInterfaceController.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 15/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarInterfaceController: WKInterfaceController {
    
    @IBOutlet var botonConfirmar: WKInterfaceButton!
    @IBOutlet var labelTextoFinal: WKInterfaceLabel!
    @IBOutlet var imagen: WKInterfaceImage!
    var cont = 0
    
    var tamaño = String()
    var masa = String()
    var queso = String()
    var ingredientes = [String]()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        labelTextoFinal.setAlpha(1)
        imagen.setAlpha(0)
        let datosFinales = context as! Datos
        tamaño = datosFinales.tamaño
        masa = datosFinales.masa
        queso = datosFinales.queso
        ingredientes = datosFinales.ingredientesPizza
        
        labelTextoFinal.setText("Su Pizza \(tamaño) de masa \(masa) y \(queso) con \(ingredientes) se enviara al cocinero, presiones confirmar para continuar")
        
        print(ingredientes)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func confirmar() {
        if cont == 0{
            labelTextoFinal.setAlpha(0)
            imagen.setAlpha(1)
            botonConfirmar.setTitle("Pedir otra Pizza")
            cont += 1
        }else{
            cont = 0
            botonConfirmar.setTitle("Confirmar")
            let valoresReiniciados = Datos(t: "", m: "", q: "", ingre: [])
            pushControllerWithName("TamañoController", context: valoresReiniciados)
        }
        
    }

}
