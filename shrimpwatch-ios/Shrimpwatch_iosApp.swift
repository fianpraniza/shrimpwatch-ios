//
//  Shrimpwatch_iosApp.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 02/05/26.
//

import SwiftUI

@main
struct Shrimpwatch_iosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .navigationTitle("Home")
            }
        }
    }
}
