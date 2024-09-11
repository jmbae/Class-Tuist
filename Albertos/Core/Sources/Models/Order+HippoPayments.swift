extension Order {
    public var hippoPaymentsPayload: [String: Any] { ["items": items.map { $0.name }] }
}
