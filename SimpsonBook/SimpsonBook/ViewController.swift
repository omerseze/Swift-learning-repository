//
//  ViewController.swift
//  SimpsonBook
//
//  Created by ömer  faruk sezer on 19.02.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var mySimpson = [Simpson]()
    
    var chosenSimpson : Simpson?

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        //simpson objects
        
        let homer = Simpson(simpsonName: "homer", simpsonJob: "nuclear engineer", simpsonİmage: UIImage(named: "homer")!)
        let lisa = Simpson(simpsonName: "lisa", simpsonJob: "student", simpsonİmage: UIImage(named: "lisa")!)
        let bart = Simpson(simpsonName: "bart", simpsonJob: "student", simpsonİmage: UIImage(named: "bart")!)
        let maggie = Simpson(simpsonName: "maggie", simpsonJob: "baby", simpsonİmage: UIImage(named: "maggie")!)
        let marge = Simpson(simpsonName: "marge", simpsonJob: "house wife", simpsonİmage: UIImage(named: "marge")!)
        
        mySimpson.append(homer)
        mySimpson.append(lisa)
        mySimpson.append(bart)
        mySimpson.append(maggie)
        mySimpson.append(marge)
        
        
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc"{
            
            let destinationVC  = segue.destination as! detailsVc
            destinationVC.selectedSimpson = chosenSimpson
            
            
            
            
            
        }
    }
    
    
    


}

