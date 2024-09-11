import Combine
import Core

protocol PaymentProcessing {

    func process(order: Order) -> AnyPublisher<Void, Error>
}
