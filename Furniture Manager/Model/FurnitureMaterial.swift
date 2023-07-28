//
//  FurnitureMaterial.swift
//  Furniture Manager
//
//  Created by Elfo on 28/07/2023.
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
