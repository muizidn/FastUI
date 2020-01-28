import FastUIKit

extension _HStack: SomeView {
    public var body: SomeView { self }
}

public struct HStack: SomeView {
    private let view: _HStack
    
    public var body: SomeView { view }
}

public extension HStack {
    init(@ViewBuilder builder: () -> SomeView) {
        let view = _HStack()
        let someviews = builder().asSubviews()
        someviews.forEach { (v) in
            view.add(v.view(Self.self))
        }
        self = Self.init(view: view)
    }
}
