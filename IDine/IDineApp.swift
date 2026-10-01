//
//  IDineApp.swift
//  IDine
//
//  Created by Alex Artamonov on 9/30/26.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject private var order = Order()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
