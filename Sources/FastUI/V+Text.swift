import UIKit
import FastUIKit

public struct Text: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.Text
    public static func create(_ view: FastUIKit.Text, subViews: [SomeView]) -> Text {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}

public extension Text {
    init<S>(_ s: S) where S: StringProtocol {
        let text = UIKitView()
        text.text = String.init(s)
        self = Self.create(text, subViews: [])
    }
}
