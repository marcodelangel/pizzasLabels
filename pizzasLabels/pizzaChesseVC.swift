//
//  pizzaChesseVC.swift
//  pizzasLabels
//
//  Created by Marco Del Angel on 20/08/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import UIKit

class pizzaChesseVC: UIViewController {
    
    var tamaño:String = ""
    var masa:String = ""
    var queso:String =  ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (tamaño, masa)
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "cheese"{
        
            let destination:pizzaIngredientsVC =  segue.destinationViewController as! pizzaIngredientsVC
            destination.tamaño = self.tamaño
            destination.masa = self.masa
            destination.queso = self.queso
            
        }
        
    }

    @IBAction func cheddar(sender: AnyObject){
        
        self.queso = "Cheddar"
        self.performSegueWithIdentifier("cheese", sender: sender)
    }
    
    @IBAction func mozarella(sender: AnyObject){
        
        self.queso = "Mozarella"
        self.performSegueWithIdentifier("cheese", sender: sender)
        
    }
    
    @IBAction func parmesano(sender: AnyObject){
        
        self.queso = "Parmesano"
        self.performSegueWithIdentifier("cheese", sender: sender)
    }
    
    @IBAction func sinQueso(sender: AnyObject){
        
        self.queso = "Sin Queso"
        self.performSegueWithIdentifier("cheese", sender: sender)
    }


}
