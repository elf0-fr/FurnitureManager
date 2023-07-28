//
//  FurnitureType.swift
//  Furniture Manager
//
//  Created by Elfo on 28/07/2023.
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
