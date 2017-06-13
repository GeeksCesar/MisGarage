//
//  Car.swift
//  MI Garaje
//
//  Created by Cesar Lizcano on 12/06/17.
//  Copyright © 2017 Cesar Lizcano. All rights reserved.
//

import Foundation
import UIKit


class Coche: NSObject {
    
    var caballos : Int!
    var marca : String!
    var modelo : String!
    var color : UIColor!
    var km : Double!
    var img : UIImage?
    
    
    override var description : String {
      return "mi coche es \(marca!) \(modelo!) ,tiene \(caballos!) de fuerza y tiene \(km) de recorrido"
    }
    
    //contructor
    override init() {
        caballos = 0
        marca = "Desconocido"
        modelo = "Desconocido"
        color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        km = 0.0
    }
    
    init(caballos: Int , marca: String, modelo: String , color: UIColor , km: Double, img : UIImage? ){
        self.caballos = caballos
        self.marca = marca
        self.modelo = modelo
        self.color = color
        self.km = km
        
        if let img = img {
            self.img =  img
        }
        
        
    }
    
    func addKms(kmsTooAdd : Double!){
        self.km = self.km + kmsTooAdd
    }
    
    
    func accelarate() {
        print("acelerero")
    }
    
    func maxSpped() -> Int {
        return  120
    }
    
    func powerToWatts() -> Int {
        return 735 * self.caballos
    }
    
}
