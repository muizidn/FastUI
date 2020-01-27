import UIKit

public protocol SomeView: CustomDebugStringConvertible {
    var view: UIView { get }
}

extension SomeView {
    func asSubviews() -> [SomeView] {
        if let view = self as? TupleView {
            return view._view.contents
        }
        return [self]
    }
}

public extension SomeView where Self: UIKitContainer {
    init(@ViewBuilder builder: () -> SomeView) {
        self = Self.create(.init(), subViews: builder().asSubviews())
    }
    
    init(@ViewBuilder builder: () -> Void) {
        builder()
        self = Self.init()
    }
    
    init() {
        self = Self.create(Self.UIKitView.init(), subViews: [])
    }
    
    var debugDescription: String {
        "view.recursiveDescription()"
    }
}
