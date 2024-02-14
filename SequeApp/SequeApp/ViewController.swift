//
//  ViewController.swift
//  SequeApp
//
//  Created by ömer  faruk sezer on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var textfieldlabel: UITextField!
    
    var username = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // lifecycle
        print("viewdidload function called ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Funciton called")
    }

    
    @IBAction func nextclicked(_ sender: Any) {
        username = textfieldlabel.text!
        performSegue(withIdentifier: "tosecondvc", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tosecondvc"{
            // as casting
            let destinationVc = segue.destination as! SecondViewcontroller
            destinationVc.myname = username
        }
    }
    
}

