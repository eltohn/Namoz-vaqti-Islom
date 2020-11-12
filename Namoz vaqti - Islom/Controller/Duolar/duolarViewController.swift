//
//  duolarViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/11/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//
 
import UIKit

class duolarViewController: UIViewController {
    
    @IBOutlet weak var namozlarLabel: UILabel!
    @IBOutlet weak var nameView: UIView!
    
    var label4 = String()
    
    override func viewDidLoad() {

         
        
        super.viewDidLoad()
        
        nameView.layer.borderWidth = 6
        nameView.layer.cornerRadius = 15
        nameView.layer.borderColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        
        namozlarLabel.text = label4
    }
}
 
