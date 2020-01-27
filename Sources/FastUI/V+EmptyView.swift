import UIKit

public struct EmptyView: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: UIView
    public static func create(_ view: UIView, subViews: [SomeView]) -> EmptyView {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}
