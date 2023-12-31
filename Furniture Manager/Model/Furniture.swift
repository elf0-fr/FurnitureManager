//
//  See the LICENSE.txt file for this project's licensing information.
//
//  Furniture.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//

import Foundation
import SwiftData

@Model
final class Furniture {
    @Attribute(.unique)
    var id: UUID
    var name: String
    var price: FurniturePrice
    var dimensions: FurnitureDimensions
    
    var type: FurnitureType
    var materials: [FurnitureMaterial]
    var space: Space
    
    init(
        id: UUID, name: String,
        price: FurniturePrice, dimensions: FurnitureDimensions
    ) {
        self.id = id
        self.name = name
        self.price = price
        self.dimensions = dimensions
    }
}

extension Furniture {
    @Transient
    var displayName: String {
        name.isEmpty ? "Untitled Furniture" : name
    }
    
    static var preview: Furniture {
        .init(
            id: UUID(), name: "Romain's chair",
            price: .init(currency: .EUR, price: 99), dimensions: .init(unit: DimensionsUnit.Millimetre, width: 60, height: 120, depth: 60))
    }
}
