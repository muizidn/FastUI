import FastUIKit

extension _SecureTextField: SomeView {
    public var body: SomeView { self }
}

public struct SecureTextField: SomeView {
    private let view: _SecureTextField
    public var body: SomeView { view }
}

public extension SecureTextField {
    init() {
        self = Self.init(view: _SecureTextField())
    }
}
