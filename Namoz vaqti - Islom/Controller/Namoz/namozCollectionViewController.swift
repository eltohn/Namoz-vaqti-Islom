//
//  namozCollectionViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/7/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit

class collectionCell: UICollectionViewCell {
     
    @IBOutlet weak var cellLabel: UILabel!
}

class namozCollectionViewController: UICollectionViewController {
    
    var a = ["Bomdod",
             "Peshin",
             "Asr",
             "Shom",
             "Xufton"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Namoz"
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return a.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "namoz", for: indexPath) as! collectionCell
        
        item.layer.borderWidth = 3
        item.layer.borderColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        item.layer.cornerRadius = 10
        item.layer.shadowOffset = CGSize(width: 0, height: 0)
        item.layer.shadowOpacity = 1
        item.layer.masksToBounds = false
        item.cellLabel.text = a[indexPath.row]
        return item
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
            if indexPath.row == 0 {
                if let vc = storyboard?.instantiateViewController(identifier: "bomdodTableViewController") as? bomdodTableViewController {
                    
                    navigationController?.pushViewController(vc, animated: true)
                }
            }else{
                if let vc2 = storyboard?.instantiateViewController(identifier: "bomdodViewController") as? bomdodViewController {
                    
                    vc2.label4 = K.namoz4[indexPath.row - 1]
                    
                    navigationController?.pushViewController(vc2, animated: true)
                }
            }
        
    }
}
