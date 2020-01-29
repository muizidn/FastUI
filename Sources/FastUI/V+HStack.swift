extension SwiftUI.HStack: View {
    public var body: View { self }
}

public struct HStack: View {
    private let view: SwiftUI.HStack
    
    public var body: View { view }
}

public extension HStack {
    init(@ViewBuilder builder: () -> View) {
        let view = SwiftUI.HStack()
        let someviews = builder().asSubviews()
        self = Self.init(view: view)
        someviews.forEach { (v) in
            v.configureInParent(self)
            view.add(v.view(Self.self))
        }
    }
}
