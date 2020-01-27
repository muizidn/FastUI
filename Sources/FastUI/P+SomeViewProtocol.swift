import UIKit

public protocol SomeView: CustomDebugStringConvertible {
    var view: UIView { get }
}

extension SomeView {
    func asSubviews() -> [SomeView] {
        if self is EmptyView {
            return []
        }
        if let view = self as? TupleView {
            return view._view.contents
        }
        return [self]
    }
}

public extension SomeView where Self: UIKitContainer {
    init(@ViewBuilder builder: () -> SomeView) {
        self = Self.create(Self.UIKitView.init(), subViews: builder().asSubviews())
    }
    
    init() {
        self = Self.create(Self.UIKitView.init(), subViews: [])
    }
    
    var debugDescription: String {
        view.recursiveDescription()
    }
}
