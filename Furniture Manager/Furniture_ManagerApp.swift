//
//  Furniture_ManagerApp.swift
//  Furniture Manager
//
//  Created by Elfo on 27/07/2023.
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
