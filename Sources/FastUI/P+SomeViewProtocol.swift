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
    
    public var debugDescription: String {
        view.recursiveDescription()
    }
}
