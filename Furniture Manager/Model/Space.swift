//
//  See the LICENSE.txt file for this project's licensing information.
//
//  File.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//

import Foundation
import SwiftData

/// A space is where a furniture is stored.
@Model
final class Space {
    @Attribute(.unique)
    var name: String
    
    var furnitures: [Furniture]
    
    init(name: String) {
        self.name = name
    }
}

extension Space {
    static var preview: Space {
        .init(name: "Office")
    }
}
