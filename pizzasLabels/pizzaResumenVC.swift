//
//  pizzaResumenVC.swift
//  pizzasLabels
//
//  Created by Marco Del Angel on 20/08/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import UIKit

class pizzaResumenVC: UIViewController {
    
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:[String] = []

    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (tamaño, masa, queso, ingredientes)

        tamañoLabel.text = "Tamaño: \(tamaño)"
        masaLabel.text = "Masa: \(masa)"
        quesoLabel.text = "Queso: \(queso)"
    
        var arrayToString:String = "Ingredientes: "
        
        for n in 0 ..< ingredientes.count{
            if (n < self.ingredientes.count){
                arrayToString += " \(self.ingredientes[n])"
            }
        }
        ingredientesLabel.text = arrayToString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
