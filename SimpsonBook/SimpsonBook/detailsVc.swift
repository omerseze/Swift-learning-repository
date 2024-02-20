//
//  detailsVc.swift
//  SimpsonBook
//
//  Created by ömer  faruk sezer on 19.02.2024.
//

import UIKit

class detailsVc: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    var selectedSimpson : Simpson?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        // Do any additional setup after loading the view.
     
    }
    
   

    

}
