import UIKit

public protocol UIKitContainer {
    associatedtype UIKitView: UIView
    var _view: UIKitView { get }
    static func create(_ view: UIKitView, subViews: [SomeView]) -> Self
}

public extension UIKitContainer where Self: SomeView {
    static func create(_ view: UIKitView, subViews: [SomeView]) -> SomeView {
        return { () -> Self in create(view, subViews: subViews) }()
    }
}
