//
//  FurnitureDimensions.swift
//  Furniture Manager
//
//  Created by Elfo on 28/07/2023.
//

import Foundation

struct FurnitureDimensions: Codable {
    var unit: DimensionsUnit
    var width: Double
    var height: Double
    var depth: Double
}

enum DimensionsUnit: String, Codable {
    case Inch = "in"
    case Millimetre = "mm"
}

extension FurnitureDimensions {
    var displayWidth: String {
        "\(width) \(unit)"
    }
    
    var displayHeight: String {
        "\(height) \(unit)"
    }
    
    var displayDepth: String {
        "\(depth) \(unit)"
    }
}
