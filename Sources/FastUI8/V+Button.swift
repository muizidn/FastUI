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

extension SwiftUI {
    final class Button: UIButton {
        public var label: UILabel = UILabel() {
            didSet {
                setTitle(label.text, for: .normal)
            }
        }
        public var action: () -> Void = {} {
            didSet {
                self.addTarget(
                    self,
                    action: #selector(callAction),
                    for: .touchUpInside)
            }
        }
        
        @objc func callAction() {
            action()
        }
    }
}
