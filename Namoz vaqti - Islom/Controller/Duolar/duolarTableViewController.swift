//
//  duolarTableViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/11/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

 

import UIKit


class duoCell : UITableViewCell {
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var view: UIView!
    
}

class duolarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Duolar"
    }
    var sura = ["Sa'no duosi",
             "Salovat",
             "Robbana duosi",
             "Attaxiyat",
             "Qunut duosi",
             "Vitr namozi"
             ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sura.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "duolar", for: indexPath) as! duoCell
        
        cell.view.layer.cornerRadius = 10
        cell.labelView.text = sura[indexPath.row]
       
        cell.labelView.numberOfLines = 0
        
        
        cell.view.layer.shadowOpacity = 0.7
        cell.view.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        if indexPath.row % 2 == 0 {
            cell.view.backgroundColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        }else {
            cell.view.backgroundColor = #colorLiteral(red: 0.9316385984, green: 0.8934960961, blue: 0.8457528949, alpha: 1)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "duolarViewController") as? duolarViewController {
            vc.label4 = K.duolar[indexPath.row]
             
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
