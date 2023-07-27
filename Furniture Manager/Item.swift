//
//  Item.swift
//  Furniture Manager
//
//  Created by Elfo on 27/07/2023.
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
