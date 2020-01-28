import FastUIKit

extension _HStack: View {
    public var body: View { self }
}

public struct HStack: View {
    private let view: _HStack
    
    public var body: View { view }
}

public extension HStack {
    init(@ViewBuilder builder: () -> View) {
        let view = _HStack()
        let someviews = builder().asSubviews()
        someviews.forEach { (v) in
            view.add(v.view(Self.self))
        }
        self = Self.init(view: view)
    }
}
