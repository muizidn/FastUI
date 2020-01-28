extension _TextField: View {
    public var body: View { self }
}

public struct TextField: View {
    private let view: _TextField
    public var body: View { view }
    
    
}

public extension TextField {
    init(_ placeholder: String) {
        self = Self.init(view: _TextField())
        view.placeholder = placeholder
    }
}
