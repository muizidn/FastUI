import FastUIKit


extension _Text: SomeView {
    public var body: SomeView { self }
}

public struct Text: SomeView {
    private let view: _Text
    
    public var body: SomeView { view }
}

public extension Text {
    init<S>(_ s: S) where S: StringProtocol {
        let text = _Text()
        text.text = String.init(s)
        self = Self.init(view: text)
    }
}
