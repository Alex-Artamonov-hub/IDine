//
//  ContentView.swift
//  IDine
//
//  Created by Alex Artamonov on 9/30/26.
//

import SwiftUI

struct ContentView: View {
    let menu: [MenuSection] = Bundle.main.decode("menu.json")

    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("iDine")
        }
    }
}

#Preview {
    ContentView()
}
