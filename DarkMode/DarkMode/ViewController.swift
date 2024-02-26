//
//  ViewController.swift
//  DarkMode
//
//  Created by ömer  faruk sezer on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userınterfaceStyle = traitCollection.userInterfaceStyle
        
        if userınterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userınterfaceStyle = traitCollection.userInterfaceStyle
        
        if userınterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
    }


}

