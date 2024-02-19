//
//  detailsvc.swift
//  cityLandmarksApp
//
//  Created by ömer  faruk sezer on 19.02.2024.
//

import UIKit

class detailsvc: UIViewController {
    
    @IBOutlet weak var landMarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        landMarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
