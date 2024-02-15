//
//  ViewController.swift
//  AlertProject
//
//  Created by ömer  faruk sezer on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordagainText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpClicked(_ sender: Any) {
        /*
         
        let alert = UIAlertController(title: "ERROR", message: "username not found!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked action
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
         
        */
        
        if usernameText.text == "" {
           makeAlrt(titleInput: "Error", messageInput: "username not found")
        }else if passwordText.text == ""{
            makeAlrt(titleInput: "Error", messageInput: "password not found")
        }else if passwordText.text != passwordagainText.text {
            makeAlrt(titleInput: "Error", messageInput: "password do not match")
        }else {
            makeAlrt(titleInput: "Succes", messageInput: "User ok ")
        }
        func makeAlrt(titleInput:String, messageInput:String){
            let alert = UIAlertController(title:titleInput, message:messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
        
        
    }
    

}

