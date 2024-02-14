//
//  SecondViewcontroller.swift
//  SequeApp
//
//  Created by ömer  faruk sezer on 14.02.2024.
//

import UIKit

class SecondViewcontroller: UIViewController {
    
    
    @IBOutlet weak var MylabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text =  myname
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
