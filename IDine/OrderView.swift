//
//  OrderView.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct OrderView: View {
    @State private var showingCheckout = false
    @State private var showingConfirmation = false
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationStack {
            List {
                ForEach(order.items) { item in
                    HStack {
                        Button("Checkout") {
                            showingCheckout = true
                        }
                        Text(item.price, format: .currency(code: "USD"))
                    }
                }
            }
            List {
                ForEach(order.items) { item in
                    HStack {
                        Text(item.name)

                        Spacer()

                        Text(item.price, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: order.remove)
            }
            .toolbar {
                EditButton()
            }
            .navigationTitle("Your Order")
            .sheet(isPresented: $showingCheckout) {
                CheckoutView()
            }
            .alert("Order Placed!", isPresented: $showingConfirmation) {
                Button("Done") {
                    order.items.removeAll()
                }
            } message: {
                Text("Your order has been submitted.")
            }
        }
    }
}
