//
//  ViewController.swift
//  cityLandmarksApp
//
//  Created by ömer  faruk sezer on 18.02.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()

    var chosenLandmarkname = ""
    var chosenLandmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        landMarkNames.append("cappadocia")
        landMarkNames.append("budapest")
        landMarkNames.append("kyoto")
        landMarkNames.append("hallstat")
        
        landMarkImages.append(UIImage(named: "cappadocia")!)
        landMarkImages.append(UIImage(named: "budapest")!)
        landMarkImages.append(UIImage(named: "kyoto")!)
        landMarkImages.append(UIImage(named: "hallstat")!)
        
        
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        // cell .texylabel = text
        content.text = landMarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenLandmarkname = landMarkNames[indexPath.row]
        chosenLandmarkImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "todetailsvc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailsvc" {
            let destinationVc = segue.destination as! detailsvc
            destinationVc.selectedLandmarkName = chosenLandmarkname
            destinationVc.selectedLandmarkImage = chosenLandmarkImage
        }
    }
    
    //delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landMarkNames.remove(at: indexPath.row)
            self.landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    


}

