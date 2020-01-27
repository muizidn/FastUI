import UIKit

public protocol SomeView: CustomDebugStringConvertible {
    var view: UIView { get }
}

public extension SomeView where Self: UIKitContainer {
    init(@ViewBuilder<Self> builder: () -> Self) {
        self = builder()
    }
    
    init() {
        self = Self.create(Self.UIKitView.init(),subViews: [])
    }
    
    var debugDescription: String {
        "view.recursiveDescription()"
    }
}
