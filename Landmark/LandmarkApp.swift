//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Sebghatullah Wakily on 07/08/2022.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
