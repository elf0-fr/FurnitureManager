//
//  See the LICENSE.txt file for this project's licensing information.
//
//  AppSidebarList.swift
//  Furniture Manager
//
//  Created by: Romain Tirbisch AKA Elfo on 2023
//


import SwiftUI
import SwiftData

struct AppSidebarList: View {
    @Binding var selection: AppScreen?
    
    @Query private var spaces: [Space]
    @Query private var types: [FurnitureType]
    
    var body: some View {
        List(selection: $selection) {
            ForEach(AppScreen.defaultCase) { screen in
                NavigationLink(value: screen) {
                    screen.label
                }
            }
            
            Section("Spaces") {
                ForEach(spaces) { space in
                    let screen = AppScreen.Space(name: space.name)
                    NavigationLink(value: screen) {
                        screen.label
                    }
                }
            }
            
            Section("Types") {
                ForEach(types) { type in
                    let screen = AppScreen.FurnitureType(name: type.name)
                    NavigationLink(value: screen) {
                        screen.label
                    }
                }
            }
        }
        .navigationTitle("Furnitures")
    }
}

/*
 There is currently some issues with using swiftData and the Preview macro.
 */
//#Preview {
//    NavigationSplitView {
//        AppSidebarList(selection: .constant(.Home))
//    } detail: {
//        Text("Hello")
//    }
//}

struct AppSidebarList_Preview: PreviewProvider {
    static var previews: some View {
        NavigationSplitView {
            AppSidebarList(selection: .constant(.Home))
                .modelContainer(PreviewSampleData.container)
        } detail: {
            AppDetailColumn(screen: .Home)
        }
    }
}
