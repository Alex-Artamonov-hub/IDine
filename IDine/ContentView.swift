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
        TabView {
            NavigationStack {
                List {
                    ForEach(menu) { section in
                        Section(section.name) {
                            ForEach(section.items) { item in
                                NavigationLink {
                                    ItemDetail(item: item)
                                } label: {
                                    ItemRow(item: item)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("iDine")
            }
            .tabItem {
                Label("Menu", systemImage: "list.bullet")
            }

            OrderView()
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
        }
        .tint(.orange)
    }
}
