extension SwiftUI.VStack: View {
    public var body: View { self }
}

public struct VStack: View {
    private let view: SwiftUI.VStack
    
    public var body: View { view }
}

public extension VStack {
    init(@ViewBuilder builder: () -> View) {
        let view = SwiftUI.VStack()
        let someviews = builder().asSubviews()
        self = Self.init(view: view)
        someviews.forEach { (v) in
            v.configureInParent(self)
            view.add(v.view(Self.self))
        }
    }
}

extension SwiftUI {
    final class VStack: UIView {
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
    }
}
