//
//  Order.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import Foundation
import SwiftUI
public import Combine

class Order: ObservableObject {
    @Published var items = [MenuItem]()

    var total: Double {
        items.reduce(0) { $0 + $1.price }
    }

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
