extension SwiftUI.Button: View {
    public var body: View { self }
}

public struct Button: View {
    private let view: SwiftUI.Button
    public var body: View { view }
}

public extension Button {
    init<S>(_ title: S, action: @escaping () -> Void) where S: StringProtocol {
        self = Self.init(view: SwiftUI.Button())
        view.setTitle(String(title), for: .normal)
        view.action = action
    }
    
    init(action: @escaping () -> Void, @ViewBuilder label: () -> Text) {
        self = Self.init(view: SwiftUI.Button())
        self.view.action = action
        self.view.label = label().view(Self.self) as! UILabel
    }
}
