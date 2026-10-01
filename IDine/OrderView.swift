//
//  OrderView.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationStack {
            List {
                ForEach(order.items) { item in
                    HStack {
                        Text(item.name)

                        Spacer()

                        Text(item.price, format: .currency(code: "USD"))
                    }
                }
            }
            .navigationTitle("Your Order")
        }
    }
}
