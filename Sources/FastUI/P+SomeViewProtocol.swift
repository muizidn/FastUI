import UIKit

public protocol SomeView: CustomDebugStringConvertible {
    var view: UIView { get }
}

public extension SomeView where Self: UIKitContainer {
    init(@ViewBuilder builder: () -> SomeView) {
        self = Self.create(.init(), subViews: [builder()] )
    }
    
    init(@ViewBuilder builder: () -> [SomeView]) {
        self = Self.create(.init(), subViews: builder() )
    }
    
    init(builder: () -> Void) {
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
