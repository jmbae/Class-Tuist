import Combine
import SwiftUI
import HippoPayments
import Core

extension OrderDetail {

    class ViewModel: ObservableObject {

        let headerText = "Your Order"
        let menuListItems: [MenuItem]
        let emptyMenuFallbackText = "Add dishes to the order to see them here"
        let totalText: String?

        let shouldShowCheckoutButton: Bool
        let checkoutButtonText = "Checkout"

        private let orderController: OrderController
        private let paymentProcessor: PaymentProcessing
        
        @Published var alertToShow: Alert.ViewModel?
        
        private let onAlertDismiss: () -> Void

        private var cancellables = Set<AnyCancellable>()

        init(orderController: OrderController, 
             paymentProcessor: PaymentProcessing,
             onAlertDismiss: @escaping () -> Void) {
            self.orderController = orderController
            self.paymentProcessor = paymentProcessor
            self.onAlertDismiss = onAlertDismiss

            if orderController.order.items.isEmpty {
                totalText = .none
                shouldShowCheckoutButton = false
            } else {
                totalText = "Total: $\(String(format: "%.2f", orderController.order.total))"
                shouldShowCheckoutButton = true
            }

            menuListItems = orderController.order.items
        }

        func checkout() {
            paymentProcessor.process(order: orderController.order)
                .sink(
                    receiveCompletion: { [weak self] completion in
                        guard case .failure = completion else { return }

                        self?.alertToShow = Alert.ViewModel(
                            title: "",
                            message: "There's been an error with your order. Please contact a waiter.",
                            buttonText: "Ok",
                            buttonAction: self?.onAlertDismiss
                        )
                    },
                    receiveValue: { [weak self] _ in
                        self?.alertToShow = Alert.ViewModel(
                            title: "",
                            message: "The payment was successful. Your food will be with you shortly.",
                            buttonText: "Ok",
                            buttonAction: self?.onAlertDismiss
                        )
                    }
                )
                .store(in: &cancellables)

        }
    }
}
