//
//  CheckoutView.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @Environment(\.dismiss) var dismiss

    @State private var name = ""
    @State private var address = ""
    @State private var payment = "Card"

    let paymentOptions = ["Card", "Cash"]

    var body: some View {
        NavigationStack {
            Form {
                Section("Customer") {
                    TextField("Name", text: $name)
                    TextField("Address", text: $address)
                }

                Section("Payment") {
                    Picker("Payment", selection: $payment) {
                        ForEach(paymentOptions, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section("Order") {
                    HStack {
                        Text("Total")
                        Spacer()
                        Text(order.total, format: .currency(code: "USD"))
                            .bold()
                    }

                    Button("Place Order") {
                        dismiss()
                    }
                }
            }
            .navigationTitle("Checkout")
            TextField("Name", text: $name)
            TextField("Address", text: $address)
        }
        
    }
}
