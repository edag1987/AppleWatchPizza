//
//  IngredientesInterfaceController.swift
//  AWPizza
//
//  Created by Danilo Adriano Gallardo on 14/11/15.
//  Copyright © 2015 Danilo Adriano Gallardo. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var contador = 0
    @IBOutlet var botonPreparar: WKInterfaceButton!
    var ingredientes = ["","","","","","","","","",""]
    
    var tamaño = String()
    var masa = String()
    var queso = String()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let dato = context as! Datos
        tamaño = dato.tamaño
        masa = dato.masa
        queso = dato.queso
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func boton1(value: Bool) {
        if value.boolValue == true {
            ingredientes[0] = "Jamón"
            contador += 1
        }else{
            ingredientes[0] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton2(value: Bool) {
        if value.boolValue == true {
            ingredientes[1] = "Pepperoni"
            contador += 1
        }else{
            ingredientes[1] = ""
            contador -= 1
        }
    }

    @IBAction func boton3(value: Bool) {
        if value.boolValue == true {
            ingredientes[2] = "Pavo"
            contador += 1
        }else{
            ingredientes[2] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton4(value: Bool) {
        if value.boolValue == true {
            ingredientes[3] = "Salchicha"
            contador += 1
        }else{
            ingredientes[3] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton5(value: Bool) {
        if value.boolValue == true {
            ingredientes[4] = "Aceitunas"
            contador += 1
        }else{
            ingredientes[4] = ""
            contador -= 1
        }
    }
    
    
    @IBAction func boton6(value: Bool) {
        if value.boolValue == true {
            ingredientes[5] = "Cebolla"
            contador += 1
        }else{
            ingredientes[5] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton7(value: Bool) {
        if value.boolValue == true {
            ingredientes[6] = "Pimiento"
            contador += 1
        }else{
            ingredientes[6] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton8(value: Bool) {
        if value.boolValue == true {
            ingredientes[7] = "Pimiento"
            contador += 1
        }else{
            ingredientes[7] = ""
            contador -= 1
        }
    }
    
    @IBAction func boton9(value: Bool) {
        if value.boolValue == true {
            ingredientes[8] = "Anchoas"
            contador += 1
        }else{
            ingredientes[8] = ""
            contador -= 1
        }
    }
    
    
    
    
    
    @IBAction func seguir() {
        if contador < 6{
            botonPreparar.setTitle("Preparar")
            let enviarDatos = Datos(t: tamaño, m: masa, q: queso, ingre:ingredientes)
            pushControllerWithName("confirmar", context: enviarDatos)
            
        } else{
            botonPreparar.setTitle("borre \(contador - 5) ingredientes")
        }
        
    }
}
