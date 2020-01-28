import FastUIKit

extension _Button: SomeView {
    public var body: SomeView { self }
}

public struct Button: SomeView {
    private let view: _Button
    public var body: SomeView { view }
}

public extension Button {
    init<S>(_ title: S, action: @escaping () -> Void) where S: StringProtocol {
        self = Self.init(view: _Button())
        view.setTitle(String(title), for: .normal)
        view.action = action
    }
    
    init(action: @escaping () -> Void, @ViewBuilder label: () -> Text) {
        self = Self.init(view: _Button())
        self.view.action = action
        self.view.label = label().view(Self.self) as! UILabel
    }
}
