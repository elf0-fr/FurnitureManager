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

/// A furniture material discribre a material used to build the furniture.
///
/// Example:
/// - Bamboo.
/// - Metal.
/// - Plastic.
/// - Wood.
@Model
final class FurnitureMaterial {
    @Attribute(.unique)
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

extension FurnitureMaterial {
    static var preview: FurnitureMaterial {
        .init(name: "plastic")
    }
}
