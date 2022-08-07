//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Daniel Kubong on 7/5/22.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
