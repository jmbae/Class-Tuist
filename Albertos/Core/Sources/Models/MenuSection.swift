//
//  MenuSection.swift
//  Albertos
//
//  Created by Jungman Bae on 7/10/24.
//

import Foundation

public struct MenuSection: Identifiable, Equatable {
    public let category: String
    public let items: [MenuItem]
    
    public var id: String { category }
}
