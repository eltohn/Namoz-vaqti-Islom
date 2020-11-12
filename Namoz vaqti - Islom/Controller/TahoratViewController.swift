//
//  TahoratViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 10/8/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit
import ImageIO

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var gifView: UIImageView!
    
   

}

class TahoratViewController: UITableViewController{
    
    var tahorat = ["a","b"]
   
       override func viewDidLoad() {

     title = "Tahorat"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return K.a.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "t", for: indexPath)  as! TableViewCell
        cell.mainLabel?.text = K.a[indexPath.row]
        cell.subLabel?.text = K.b[indexPath.row]
        cell.gifView.image = UIImage.gif(name: K.c[indexPath.row])
        return cell
    }
    
    
}
