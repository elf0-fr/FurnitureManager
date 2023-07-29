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

/// A furniture type discribres the purpuse of a furniture.
///
/// Example:
/// - Bed.
/// - Chair.
/// - Desk.
/// - Table.
@Model
final class FurnitureType {
    @Attribute(.unique)
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

extension FurnitureType {
    static var preview: FurnitureType {
        .init(name: "Chair")
    }
}
