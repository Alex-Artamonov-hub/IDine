//
//  Menu.swift
//  IDine
//
//  Created by Alex Artamonov on 10/1/26.
//

import Foundation

struct MenuSection: Codable, Identifiable {
    let id: Int
    let name: String
    let items: [MenuItem]
}

struct MenuItem: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let restrictions: [String]
}
