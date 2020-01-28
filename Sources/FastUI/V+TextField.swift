import FastUIKit

extension _TextField: SomeView {
    public var body: SomeView { self }
}

public struct TextField: SomeView {
    private let view: _TextField
    public var body: SomeView { view }
    
    
}

public extension TextField {
    init(_ placeholder: String) {
        self = Self.init(view: _TextField())
        view.placeholder = placeholder
    }
}
