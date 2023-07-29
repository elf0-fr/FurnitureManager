//
//  See the LICENSE.txt file for this project's licensing information.
//
//  Furniture_ManagerApp.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//

import SwiftUI
import SwiftData

@main
struct Furniture_ManagerApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
