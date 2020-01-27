import Foundation
import FastUIKit

public struct Button: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.Button
    public static func create(_ view: FastUIKit.Button, subViews: [SomeView]) -> Button {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}

public extension Button {
    init<S>(_ title: S, action: @escaping () -> Void) where S: StringProtocol {
        self = Self.create(UIKitView.init(), subViews: [])
        _view.setTitle(String(title), for: .normal)
        _view.action = action
    }
    
    init(action: @escaping () -> Void, @ViewBuilder label: () -> Text) {
        self = Self.create(UIKitView.init(), subViews: [])
        _view.action = action
        _view.label = label()._view
    }
}
