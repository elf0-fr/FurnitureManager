//
//  PreviewSampleData.swift
//  Furniture Manager
//
//  Created by Elfo on 28/07/2023.
//

import Foundation
import SwiftData

actor PreviewSampleData {
    @MainActor
    static var container: ModelContainer = {
        let schema = Schema([Furniture.self, FurnitureType.self, FurnitureMaterial.self, Space.self])
        let configuration = ModelConfiguration(inMemory: true)
        let container = try! ModelContainer(for: schema, configurations: [configuration])
        let sampleData: [any PersistentModel] = [
            Furniture.preview, FurnitureType.preview, FurnitureMaterial.preview, Space.preview
        ]
        sampleData.forEach {
            container.mainContext.insert($0)
        }
        return container
    }()
}
