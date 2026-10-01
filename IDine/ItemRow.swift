//
//  ItemRow.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "fork.knife")
                .font(.title2)
                .frame(width: 45, height: 45)
                .foregroundStyle(.orange)
                .background(.orange.opacity(0.15))
                .clipShape(RoundedRectangle(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 4) {
                Text(item.name)
                    .font(.headline)

                Text(item.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)

                if !item.restrictions.isEmpty {
                    Text(item.restrictions.joined(separator: ", "))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }

            Spacer()

            Text(item.price, format: .currency(code: "USD"))
                .font(.subheadline.bold())
        }
        .padding(.vertical, 6)
    }
}
