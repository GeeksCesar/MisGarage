//
//  ViewController.swift
//  MI Garaje
//
//  Created by Cesar Lizcano on 15/06/17.
//  Copyright © 2017 Cesar Lizcano. All rights reserved...
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    @IBOutlet var imageCoche: UIImageView!
    
    var myGaraje : [Coche] = []
    
    
    var mycar : Coche!
    var CarID : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mycar = Coche(caballos: 140 , marca: "Ferrary", modelo: "2057" , color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) , km: 42000, img: #imageLiteral(resourceName: "ferrari"))
        myGaraje.append(mycar)
        
        mycar = Coche(caballos: 80 , marca: "Citroen", modelo: "2057-1387" , color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) , km: 2000, img: #imageLiteral(resourceName: "citroen"))
        myGaraje.append(mycar)
        
        mycar = Coche(caballos: 60 , marca: "Fiat", modelo: "2ie7-2387" , color: #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1) , km: 22000 , img: #imageLiteral(resourceName: "fiat"))
        myGaraje.append(mycar)

        CarID = 0
        
        
        addView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addView() {
        
        mycar = myGaraje[CarID]
        
        UIView.animate(withDuration: 1.5, delay: 0.25, options: [.curveLinear , .allowUserInteraction] , animations: {
            
            if self.mycar.img != nil {
                self.imageCoche.image = self.mycar.img
            }else {
                self.imageCoche.image = nil
            }
            
            self.label1.text = "\(self.mycar.marca!) \(self.mycar.modelo!)"
            self.label2.text = "\(self.mycar.caballos!) -W: \(self.mycar.powerToWatts())"
            self.label3.text = "\(self.mycar.km!)"
            
            self.view.backgroundColor = self.mycar.color

                  }) { (completed) in
                    print("animated completed")
        }
        
    }
    
    
    @IBAction func btnCambiar(_ sender: UIButton) {
        
        CarID += 1
        
        if CarID >= myGaraje.count {
            CarID = 0
        }
        
        addView()
        
    }
    
    
    
    
    @IBAction func acelerarPressed(_ sender: UIButton) {
        self.mycar.accelarate()
    }
    
    
    
    @IBAction func añadirPress(_ sender: UIButton) {
        
        self.mycar.addKms(kmsTooAdd: 10.0)
        self.addView()
    }
    

}

