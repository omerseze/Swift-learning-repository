//
//  Item.swift
//  NewStateManagementUI
//
//  Created by ömer  faruk sezer on 10.05.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
