import Foundation
import FastUIKit

public struct TextField: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.TextField
    public static func create(_ view: FastUIKit.TextField, subViews: [SomeView]) -> TextField {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}

public extension TextField {
    init(_ placeholder: String) {
        self = Self.create(UIKitView.init(), subViews: [])
        _view.placeholder = placeholder
    }
}
