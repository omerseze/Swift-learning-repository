//
//  ViewController.swift
//  FacerRecognizationAppProject
//
//  Created by ömer  faruk sezer on 26.02.2024.
//

import UIKit
import LocalAuthentication
class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        
        let AuthContext = LAContext()
        
        
        var error: NSError?
        if AuthContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error:&error){
            
            AuthContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "is it you") { succes, error in
                if succes == true {
                    //succesful auth
                    DispatchQueue.main.async{
                        self.shouldPerformSegue(withIdentifier: "identifierVc", sender: nil)
                    }
                  
                }else {
                    self.myLabel.text = "Error!"
                    
                }
            }
            
        }
    }
    

}

