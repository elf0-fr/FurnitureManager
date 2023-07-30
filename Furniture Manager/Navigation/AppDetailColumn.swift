//
//  See the LICENSE.txt file for this project's licensing information.
//
//  AppDetailColumn.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//


import SwiftUI

struct AppDetailColumn: View {
    var screen: AppScreen?
    
    var body: some View {
        Group {
            if let screen {
                Text("There goes the screen destination")
            } else {
                ContentUnavailableView("Pick something from the list", systemImage: "sofa")
            }
        }
        #if os(macOS)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background()
        #endif
    }
}

#Preview {
    AppDetailColumn()
}
