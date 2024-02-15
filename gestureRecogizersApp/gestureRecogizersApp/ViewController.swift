//
//  ViewController.swift
//  gestureRecogizersApp
//
//  Created by ömer  faruk sezer on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var erciyes = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changepicture ))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changepicture(){
        if erciyes == true {
            imageView.image = UIImage(named: "erciyes")
            myLabel.text = "erciyes mountain"
            erciyes = false
        }else {
            imageView.image = UIImage(named: "fuji")
            myLabel.text = "fuji"
            erciyes = true
        }
    


}

}
