//
//  Order.swift
//  Albertos
//
//  Created by Jungman Bae on 7/12/24.
//

import Foundation

public struct Order: Equatable {
    public let items: [MenuItem]
    public var total: Double {
        items.reduce(0) { previousReduceValue, currentMenuItem in
            previousReduceValue + currentMenuItem.price
        }
    }
    
    public init(items: [MenuItem]) {
        self.items = items
    }
}
