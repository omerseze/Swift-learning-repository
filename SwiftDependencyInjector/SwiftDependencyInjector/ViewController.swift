//
//  ViewController.swift
//  SwiftDependencyInjector
//
//  Created by ömer  faruk sezer on 9.05.2024.
//

import UIKit
import Swinject


class ViewController: UIViewController {

    
    //SWinject
    
    let container : Container = {
        let container = Container()
         
        container.register(BackgorundProvidingClass.self) { resolver in
            return BackgorundProvidingClass()
        }
        
        container.register(AnotherVC.self) { resolver in
            let vc = AnotherVC(providerProtocol: resolver.resolve(BackgorundProvidingClass.self))
            return vc    
        }
        return container
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        //et color = #colorLiteral(red: 0.02434402891, green: 0.3464090824, blue: 0.9578863978, alpha: 1)
        
        
        self.view.backgroundColor = .systemIndigo
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        button.setTitle("Open Another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(button)
        
        
        
    }
    
    @objc private  func buttonClicked(){
        
        if let viewController = container.resolve(AnotherVC.self){
            present(viewController,animated: true)
        }
        
    }


}

