import Foundation
import FastUIKit

public struct SecureTextField: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.SecureTextField
    public static func create(_ view: FastUIKit.SecureTextField, subViews: [SomeView]) -> SecureTextField {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}

public extension SecureTextField {
    init() {
        self = Self.create(UIKitView.init(), subViews: [])
        _view.isSecureTextEntry = true
    }
}
