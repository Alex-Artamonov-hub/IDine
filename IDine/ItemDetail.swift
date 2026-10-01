//
//  ItemDetail.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem

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
                    .font(.title3)
                    .foregroundStyle(.secondary)

                Text(item.price, format: .currency(code: "USD"))
                    .font(.title2.bold())
            }
            .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
