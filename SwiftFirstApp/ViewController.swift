//
//  ViewController.swift
//  SwiftFirstApp
//
//  Created by ömer  faruk sezer on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeClicked(_ sender: Any) {
        
        imageView.image = UIImage(named: "gti")
        
        print("hello volswagen")
        
    }
    

}

