//
//  MenuItem.swift
//  Albertos
//
//  Created by Jungman Bae on 7/10/24.
//

import Foundation

public struct MenuItem: Identifiable, Hashable, Equatable, Codable {
    public let category: String
    public let name: String
    public let spicy: Bool
    public let price: Double
    
    public var id: String { name }
}

public func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    if menu.isEmpty { return [] }
    return Dictionary(grouping: menu, by: { $0.category })
        .map { key, value in MenuSection(category: key, items: value) }
        .sorted { $0.category > $1.category }
}
