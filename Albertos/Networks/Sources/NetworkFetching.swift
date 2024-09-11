//
//  NetworkFetching.swift
//  Albertos
//
//  Created by Jungman Bae on 7/12/24.
//

import Foundation
import Combine

public protocol NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError>
}
