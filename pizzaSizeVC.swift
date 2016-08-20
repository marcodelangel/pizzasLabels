//
//  pizzaSizeVC.swift
//  pizzasLabels
//
//  Created by Marco Del Angel on 19/08/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import UIKit

class pizzaSizeVC: UIViewController {
    
    var tamaño:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if segue.identifier == "size"{
            
            let destination : pizzaMassVC = segue.destinationViewController as! pizzaMassVC
            destination.tamaño = self.tamaño
            
            }

        }
    @IBAction func chica(sender: AnyObject){
        
        self.tamaño = "Chica"
        self.performSegueWithIdentifier("size", sender: sender)
    }
    
    @IBAction func mediana(sender: AnyObject){
        
        self.tamaño = "Mediana"
        self.performSegueWithIdentifier("size", sender: sender)
        
        }
    
    @IBAction func grande(sender: AnyObject){
        
        self.tamaño = "Grande"
        self.performSegueWithIdentifier("size", sender: sender)
    }
}
