extension _VStack: View {
    public var body: View { self }
}

public struct VStack: View {
    private let view: _VStack
    
    public var body: View { view }
}

public extension VStack {
    init(@ViewBuilder builder: () -> View) {
        let view = _VStack()
        let someviews = builder().asSubviews()
        someviews.forEach { (v) in
            view.add(v.view(Self.self))
        }
        self = Self.init(view: view)
    }
}
