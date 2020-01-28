import FastUIKit

extension _VStack: SomeView {
    public var body: SomeView { self }
}

public struct VStack: SomeView {
    private let view: _VStack
    
    public var body: SomeView { view }
}

public extension VStack {
    init(@ViewBuilder builder: () -> SomeView) {
        let view = _VStack()
        let someviews = builder().asSubviews()
        someviews.forEach { (v) in
            view.add(v.view(Self.self))
        }
        self = Self.init(view: view)
    }
}
