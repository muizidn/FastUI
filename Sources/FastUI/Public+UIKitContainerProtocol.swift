import UIKit

public protocol UIKitContainer {
    associatedtype UIKitView: UIView
    var _view: UIKitView { get }
    static func create(_ view: UIKitView, subViews: [SomeView]) -> Self
}
