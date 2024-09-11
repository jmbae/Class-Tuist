//
//  MenuFetching.swift
//  Albertos
//
//  Created by Jungman Bae on 7/11/24.
//

import Combine
import Network
import Core

public protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
