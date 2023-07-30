//
//  See the LICENSE.txt file for this project's licensing information.
//
//  AppScreen.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//


import SwiftUI

enum AppScreen: Codable, Hashable, Identifiable {
    var id: AppScreen { self }
    static var defaultCase: [AppScreen] {
        [.Home, .Furnitures, .Statistics]
    }
    
    // A screen where all furnitures are displayed and sorted by spaces.
    case Home
    // A list of all the furnitures that can be sorted and searched.
    case Furnitures
    // A statistics screen where the user can look at charts.
    case Statistics
    
    // Each Space screen displays only the furnitures that are stored in the eponymous space.
    case Space(name: String)
    // Each FurnitureType screen displays only the furnitures which type is FurnitureType.
    case FurnitureType(name: String)
}

extension AppScreen {
    @ViewBuilder
    var label: some View {
        switch self {
        case .Home:
            Label("Home", systemImage: "house")
        case .Furnitures:
            Label("Furnitures", systemImage: "chair.lounge")
        case .Statistics:
            Label("Statistics", systemImage: "chart.pie")
        case let .Space(name):
            Label(name, systemImage: "chair.lounge")
        case let .FurnitureType(name):
            Label(name, systemImage: "chair.lounge")
        }
    }
}
