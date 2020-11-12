//
//  savolViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 10/31/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit

class cell: UITableViewCell {
    @IBOutlet weak var labelView1: UILabel!
    @IBOutlet weak var labelView2: UILabel!
    @IBOutlet weak var viewBack: UIView!
}

class vaqtViewController: UITableViewController {
    
    @IBOutlet weak var segmentSavol: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Savol-Javoblar"
        segmentSavol.frame.size.height = 40
        
        let font = UIFont.systemFont(ofSize: 19)
        segmentSavol.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        
        
         
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch segmentSavol.selectedSegmentIndex {
        case 0:
            return K.tahoratHaqida.count
        case 1:
            return K.namozHaqida.count
        default:
            break
        }
        return K.tahoratHaqida.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "s", for: indexPath) as? cell
        
        cell?.labelView1.numberOfLines = 0
        cell?.labelView2.numberOfLines = 0
        
 
        cell?.viewBack.layer.cornerRadius = 10
        cell?.viewBack.layer.borderWidth = 2
        cell?.viewBack.layer.borderColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        cell?.viewBack.layer.shadowOpacity = 10
        cell?.viewBack.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        switch segmentSavol.selectedSegmentIndex {
        case 0:
            cell?.labelView1.text = K.tahoratHaqida[indexPath.row  ]
            cell?.labelView2.text = K.tahoratHaqidaJavob[indexPath.row ]
        case 1:
            cell?.labelView1.text = K.namozHaqida[indexPath.row  ]
            cell?.labelView2.text = K.namozHaqidaJavob[indexPath.row ]
        default:
            break
        }

        return cell!
    }

    @IBAction func segmentPressed(_ sender: UISegmentedControl) {
        tableView.reloadData()
    }

}
