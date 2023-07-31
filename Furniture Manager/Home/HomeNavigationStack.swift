//
//  See the LICENSE.txt file for this project's licensing information.
//
//  HomeNavigationStack.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//


import SwiftUI
import SwiftData

struct HomeNavigationStack: View {
    @Query private var spaces: [Space]
    
    var body: some View {
        NavigationStack {
            Text("Hello, World! There is \(spaces.count) space(s).")
                .navigationTitle("Home")
                .toolbar {
                    ToolbarItem {
                        Menu {
                            Button {
                                print("TODO")
                            } label: {
                                Label("Add a furniture", systemImage: "chair")
                            }
                            
                            Button {
                                print("TODO")
                            } label: {
                                Label("Add a space", systemImage: "square.split.bottomrightquarter")
                            }
                        } label: {
                            Image(systemName: "plus")
                        }
                        .labelStyle(.titleAndIcon)
                        .menuIndicator(.hidden)
                    }
                    
                    ToolbarItem {
                        Button {
                            print("TODO")
                        } label: {
                            Label("Reorganize", systemImage: "platter.2.filled.iphone")
                        }
                    }
                }
        }
        #if os(macOS)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background()
        #endif
    }
}

struct HomeNavigationStack_Preview: PreviewProvider {
    static var previews: some View {
        HomeNavigationStack()
            .modelContainer(PreviewSampleData.container)
    }
}
