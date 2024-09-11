import Combine
import HippoPayments
import Core

extension HippoPaymentsProcessor: PaymentProcessing {

    func process(order: Order) -> AnyPublisher<Void, Error> {
        return Future { promise in
            self.processPayment(
                payload: order.hippoPaymentsPayload,
                onSuccess: { promise(.success(())) },
                onFailure: { promise(.failure($0)) }
            )
        }
        .eraseToAnyPublisher()
    }
}
