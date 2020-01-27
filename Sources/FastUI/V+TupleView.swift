import Foundation
import FastUIKit

public struct TupleView: SomeView, UIKitContainer, ExpressibleByArrayLiteral {
    public var view: UIView { return _view }
    public let _view: FastUIKit.TupleView<SomeView>
    public static func create(_ view: FastUIKit.TupleView<SomeView>, subViews: [SomeView]) -> TupleView {
        view.contents = subViews
        return Self.init(_view: view)
    }
}

extension TupleView {
    public init(arrayLiteral elements: SomeView...) {
        self = Self.create(UIKitView.init(), subViews: elements)
    }
}
