//
//  ViewController.swift
//  BirtDayNoteTaker
//
//  Created by ömer  faruk sezer on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        // castin - as? vs as! force casting
        if let newName  = storeName as? String{
            nameLabel.text = newName
        }
        if let newBirthday = storeBirthday as? String{
            birtdayLabel.text = newBirthday
        }
    }
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        UserDefaults.standard.setValue(textField1.text!, forKey: "name")
        UserDefaults.standard.setValue(textField2.text!, forKey: "birthday")
        
    
        
        
        nameLabel.text = "Name:\(textField1.text!)"
        birtdayLabel.text = "Birtday:\(textField2.text!)"
        
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if (storeName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name"
        }
        if (storeBirthday as? String) != nil {
            UserDefaults.standard.object(forKey: "birthday")
            birtdayLabel.text = "birthday"
        }
        
    }
    
    

}

