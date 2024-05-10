//
//  AnotherVC.swift
//  SwiftDependencyInjector
//
//  Created by ömer  faruk sezer on 10.05.2024.
//

import UIKit

class AnotherVC: UIViewController {
    
    private let providerProtocol :BacgroundProviderProtocol?
    
    init(providerProtocol: BacgroundProviderProtocol?) {
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = providerProtocol?.backGroundcolor ?? .systemRed

         
    }
    

}
