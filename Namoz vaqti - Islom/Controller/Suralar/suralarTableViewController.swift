//
//  duoTableViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/5/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit


class suraCell: UITableViewCell {
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var view: UIView!
    
}
 
class suralarTableViewController: UITableViewController {
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Suralar"
        //tableView.estimatedRowHeight = 100
      // tableView.rowHeight = UITableView.automaticDimension
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    var sura = ["Fotiha surasi",
             "Ixlos surasi",
             "An-nos surasi",
             "Kavsar surasi",
             "Falak’ surasi",
             ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sura.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sura", for: indexPath) as! suraCell
        
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
        if let vc = storyboard?.instantiateViewController(identifier: "suraViewController") as? suraViewController {
            vc.number = indexPath.row
             
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
