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
fileprivate final class UIHostingView: FlexView {
    
    @objc
    override func flexWith(_ parent: FastFlex) {
        parent.flex
            .addItem(self)
        isReverse = false
    }
    
    var isReverse = false {
        didSet {
            flex.direction(isReverse ? .columnReverse : .column)
        }
    }
    
    override var ignoredSafeAreaEdgeSet: Edge.Set? {
        get { .all }
        set {  }
    }
}
