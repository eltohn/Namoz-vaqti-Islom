//
//  ViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 10/7/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var vaqtButton: UIButton!
    @IBOutlet weak var suvButton: UIButton!
    @IBOutlet weak var erkakButton: UIButton!
    
    @IBOutlet weak var suraButton: UIButton!
    @IBOutlet weak var duaButton: UIButton!
    @IBOutlet weak var savolButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "ISLOM"
        vaqtButton.layer.cornerRadius = 50
        vaqtButton.layer.shadowOpacity = 0.7
        vaqtButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
        suvButton.layer.cornerRadius = 15
        suvButton.layer.shadowOpacity = 0.7
        suvButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
        erkakButton.layer.cornerRadius = 15
        erkakButton.layer.shadowOpacity = 0.7
        erkakButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
        
          
        suraButton.layer.cornerRadius = 15
        suraButton.layer.shadowOpacity = 0.7
        suraButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
        duaButton.layer.cornerRadius = 15
        duaButton.layer.shadowOpacity = 0.7
        duaButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
        savolButton.layer.cornerRadius = 15
        savolButton.layer.shadowOpacity = 0.7
        savolButton.layer.shadowOffset = CGSize(width: 0, height: 0)
          
             
        
        
    }


}

