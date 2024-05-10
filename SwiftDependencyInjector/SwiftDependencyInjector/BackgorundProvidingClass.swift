//
//  BackgorundProvidingClass.swift
//  SwiftDependencyInjector
//
//  Created by ömer  faruk sezer on 10.05.2024.
//

import Foundation
import UIKit

class BackgorundProvidingClass : BacgroundProviderProtocol {
    var backGroundcolor: UIColor{
        
        let backgroundcolors : [UIColor] = [.systemRed,.systemOrange,.systemYellow,.systemPurple,.systemBrown,.systemGray]
        
        return backgroundcolors.randomElement()!
    }
    
}
