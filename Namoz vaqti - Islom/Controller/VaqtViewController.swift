 //
 //  VaqtViewController.swift
 //  Namoz , Duolar , Suralar , Tahorat ...
 //
 //  Created by Elbek Shaykulov on 10/11/20.
 //  Copyright © 2020 Elbek Shaykulov. All rights reserved.
 //

 import  UIKit
 class VaqtViewController: UIViewController, UITextFieldDelegate   {

    @IBOutlet weak var shaharNomi: UITextField!
    @IBOutlet weak var tong: UILabel!
    @IBOutlet weak var bomdod: UILabel!
    @IBOutlet weak var peshin: UILabel!
    @IBOutlet weak var asr: UILabel!
    @IBOutlet weak var shom: UILabel!
    @IBOutlet weak var xufton: UILabel!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shaharNomi.delegate = self
 
        shaharNomi.layer.borderWidth = 2
        shaharNomi.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shaharNomi.layer.masksToBounds = true
        shaharNomi.layer.cornerRadius = 20
   

    }
    
    //MARK: - URL String
 
    func urlString() -> String{
        let today = Date()
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd-MM-yyyy"
        let resultString = inputFormatter.string(from: today)
        let url = "https://api.aladhan.com/timingsByAddress/\(resultString)?address=\(shaharNomi.text ?? "no name")&method=14#"
        return url
    }
    
   //MARK: - cityName TEXTFIELD
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        shaharNomi.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = shaharNomi.text {
            shaharNomi.text = city
        }
        shaharNomi.text = ""
    }
    
     
    @IBAction func ppp(_ sender: UITextField) {
        print(urlString())
        performRequest()
    }
    
    //MARK: - parsing JSON
    
    func performRequest()  {
         
        if let url = URL(string: urlString()) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    DispatchQueue.main.async  {
                     self.tong.text = "Aloqa mavjud emas"
                        self.bomdod.text = ""
                        self.peshin.text = ""
                        self.asr.text = ""
                        self.shom.text = ""
                        self.xufton.text = ""
                    }
                }
                if let safeData = data {
                    self.parseJSON(safeData)
                }
            }
            task.resume()
        }
       
    }
    
    func parseJSON(_ timeData: Data)   {
        let decoder = JSONDecoder()
        do {
            let newsFeed = try decoder.decode(Adhan.self, from: timeData)
             
            DispatchQueue.main.async  {
            self.tong.text = "Tong | \(newsFeed.data?.timings?.Fajr ?? "Tong | ")"
            self.bomdod.text = "Bomdod | \(newsFeed.data?.timings?.Sunrise ?? "Bomdod | ")"
            self.peshin.text = "Peshin | \(newsFeed.data?.timings?.Dhuhr ?? "Peshin | ")"
            self.asr.text = "Asr | \(newsFeed.data?.timings?.Asr ?? "Asr | ")"
            self.shom.text = "Shom | \(newsFeed.data?.timings?.Sunset ?? "Shom | ")"
            self.xufton.text = "Xufton | \(newsFeed.data?.timings?.Isha ?? "Xufton | ")"
             }
            } catch {
                DispatchQueue.main.async  { [self] in
                 self.tong.text = "Kiritilgan shahar mavjud emas"
                    self.bomdod.text = ""
                    self.peshin.text = ""
                    self.asr.text = ""
                    self.shom.text = ""
                    self.xufton.text = ""
                }
            }
        }
 }
 
