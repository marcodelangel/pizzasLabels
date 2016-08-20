//
//  pizzaIngredientsVC.swift
//  pizzasLabels
//
//  Created by Marco Del Angel on 20/08/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import UIKit

class pizzaIngredientsVC: UIViewController {
    
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:[String] = []
    
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchica: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        print (tamaño, masa, queso)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ingredientes" {
            
            let destination:pizzaResumenVC = segue.destinationViewController as! pizzaResumenVC
            destination.tamaño = self.tamaño
            destination.masa = self.masa
            destination.queso = self.queso
            destination.ingredientes = self.ingredientes
        }
        
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        ingredientes = []
        
        if identifier == "ingredientes" {
            
            if jamon.on {self.ingredientes.append("Jamón")}
            if pepperoni.on {self.ingredientes.append("Pepperoni")}
            if pavo.on {self.ingredientes.append("Pavo")}
            if salchica.on {self.ingredientes.append("Salchicha")}
            if aceituna.on {self.ingredientes.append("Aceituna")}
        }
        
        if ingredientes.count == 0 {
            let lessIngredientAlert = UIAlertController (title: "Aviso",
                                                         message: "Selecciona por lo menos 1 ingrediente",
                                                         preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "Ok",
                                         style: UIAlertActionStyle.Default,
                                            handler: nil)
            lessIngredientAlert.addAction(okAction)
            self.presentViewController(lessIngredientAlert,
                                       animated: true,
                                       completion: nil)
        }
        
        return true
    }

}
