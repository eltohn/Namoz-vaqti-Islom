//
//  bomdodTableViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/9/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit
import ImageIO

class bomdodCell: UITableViewCell {
    @IBOutlet weak var tartibLabel: UILabel!
    @IBOutlet weak var etapImage: UIImageView!
    @IBOutlet weak var etapHarakat: UILabel!
     
    @IBOutlet weak var bomdodView: UIView!
    
}


class bomdodTableViewController: UITableViewController {
    
    
     
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    var vaqt = ["1.Niyat qilish", "2.Takbiri tahrima", "3.Qiyom ","4.Ruku ","5.Qiyom", "6.Sajda",  "7.Sajda ","8.Jalsa" ,"9.Sajda ","10.Qiyom"," 11.Ikkinchi raka’at", "12.Qa’da", "13.Salom"]
    
    var rasm = ["1b","2b","3b","4b","5b","6b","7b","8b","9b","10b","11b","12b","13b"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vaqt.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bomdodCell", for: indexPath) as! bomdodCell
        
        
  
        cell.tartibLabel.text = vaqt[indexPath.row]
        cell.etapHarakat.text = K.bomdodTekst[indexPath.row]
        cell.etapImage.image = UIImage.gif(name: rasm[indexPath.row])
        
        cell.bomdodView.layer.borderColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        cell.bomdodView.layer.cornerRadius = 10
        cell.bomdodView.layer.borderWidth = 4
        
        return cell
    }
    
 
}
