//
//  ViewController.swift
//  CurrencyConverterApp
//
//  Created by ömer  faruk sezer on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var rubLabel: UILabel!
    @IBOutlet weak var aznLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var gelLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var tmtLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func getRatesClicked(_ sender: Any) {
        
            // 1) Request & Session
              // 2) Response & Data
              // 3) Parsing & JSON Serialization
        
        
        
        //1
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=53de3ee2e8c6f60cd64cf6303380d07b")
        
        let session = URLSession.shared
        
        //clousere
        
        let task = session.dataTask(with: url!) { Data, response,error in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                
                let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okbutton)
                self.present(alert, animated: true, completion: nil)
            }else{
                //2.
                
                if Data != nil{
                    do {
                        let jsonResult = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        //ASYNC
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResult["rates"] as? [String:Any]{
                                
                                if let usd = rates ["USD"] as? Double{
                                    self.usdLabel.text = "USD: \(usd)"
                                }
                                if let rub = rates ["RUB"] as? Double{
                                    self.rubLabel.text = "RUB: \(rub)"
                                }
                                if let azn = rates ["AZN"] as? Double{
                                    self.aznLabel.text = "AZN: \(azn)"
                                }
                                if let jpy = rates ["JPY"] as? Double{
                                    self.jpyLabel.text = "JPY: \(jpy)"
                                }
                        
                                if let gel = rates ["GEL"] as? Double{
                                    self.gelLabel.text = "GEL: \(gel)"
                                }
                                if let chf = rates ["CHF"] as? Double{
                                    self.chfLabel.text = "CHF: \(chf)"
                                }
                                if let tmt = rates ["TMT"] as? Double{
                                    self.tmtLabel.text = "TMT: \(tmtm)"
                                }
                                
                                
                                
                            }
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                    }catch{
                        print("error")
                    }
                  
                    
                }
            }
        }
        task.resume()
        
        
    }
    

}

