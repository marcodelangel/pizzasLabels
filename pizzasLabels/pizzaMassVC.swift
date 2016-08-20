//
//  pizzaMassVC.swift
//  pizzasLabels
//
//  Created by Marco Del Angel on 19/08/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import UIKit

class pizzaMassVC: UIViewController {
    
    var tamaño : String = ""
    var masa : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if segue.identifier == "mass"{
        
            let destination : pizzaChesseVC = segue.destinationViewController as! pizzaChesseVC
            destination.tamaño = self.tamaño
            destination.masa = self.masa
        }
    }
    
    @IBAction func delgada(sender: AnyObject){
        
        self.masa = "Delgada"
        self.performSegueWithIdentifier("mass", sender: sender)
    }
    
    @IBAction func crunchy(sender: AnyObject){
        
        self.masa = "Crunchy"
        self.performSegueWithIdentifier("mass", sender: sender)
        
    }
    
    @IBAction func esponjosita(sender: AnyObject){
        
        self.masa = "Esponjosita"
        self.performSegueWithIdentifier("mass", sender: sender)
    }
}
