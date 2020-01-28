extension _SecureTextField: View {
    public var body: View { self }
}

public struct SecureTextField: View {
    private let view: _SecureTextField
    public var body: View { view }
}

public extension SecureTextField {
    init() {
        self = Self.init(view: _SecureTextField())
    }
}
