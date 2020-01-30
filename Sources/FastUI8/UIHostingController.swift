import UIKit

public class UIHostingController<Content: View>: UIViewController {
    private var _rootView: Content?
    var rootView: Content {
        get {
            if let view = _rootView {
                return view
            } else {
                fatalError()
            }
        }
        set { _rootView = newValue }
    }
    public convenience init(rootView: Content) {
        self.init()
        self.rootView = rootView
    }
    
    public override func loadView() {
        super.loadView()
        let base = UIHostingView()
        base.add(rootView.view(Self.self)) { v in
            v.flex.grow(1)
        }
        view = base
        view.backgroundColor = .white
    }
}

// a copy of SwiftUI.VStack
fileprivate final class UIHostingView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        guard let children = subviews.first else { fatalError() }
        
        var insets: UIEdgeInsets = {
            if #available(iOS 11.0, *) {
                return safeAreaInsets
            } else {
                return .zero
            }
        }()
        
        let ignoredSet = children.ignoredSafeAreaEdgeSet ?? .init()
        
        if ignoredSet.contains(.top) {
            insets.top = 0
        }
        if ignoredSet.contains(.leading) {
            insets.left = 0
        }
        if ignoredSet.contains(.bottom) {
            insets.bottom = 0
        }
        if ignoredSet.contains(.trailing) {
            insets.right = 0
        }
        
        flex.padding(insets)
        flex.direction(.column)
        flex.layout()
    }
}
