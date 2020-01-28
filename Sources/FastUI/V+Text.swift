
extension _Text: View {
    public var body: View { self }
}

public struct Text: View {
    private let view: _Text
    
    public var body: View { view }
}

public extension Text {
    init<S>(_ s: S) where S: StringProtocol {
        let text = _Text()
        text.text = String.init(s)
        self = Self.init(view: text)
    }
}
