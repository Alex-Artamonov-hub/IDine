//
//  ItemDetail.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem

    @EnvironmentObject var order: Order
    @State private var showingAlert = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: "fork.knife")
                    .font(.system(size: 80))
                    .frame(maxWidth: .infinity)
                    .frame(height: 220)
                    .foregroundStyle(.orange)
                    .background(.orange.opacity(0.12))
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                Text(item.name)
                    .font(.largeTitle.bold())

                Text(item.description)
                    .foregroundStyle(.secondary)

                Text(item.price, format: .currency(code: "USD"))
                    .font(.title2.bold())

                Button {
                    order.add(item: item)
                    showingAlert = true
                } label: {
                    Label("Add to Order", systemImage: "cart.badge.plus")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
            }
            .padding()
        }
        .navigationTitle(item.name)
        .alert("Added to Order", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}
