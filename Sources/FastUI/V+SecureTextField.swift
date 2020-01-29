extension SwiftUI.SecureTextField: View {
    public var body: View { self }
}

public struct SecureTextField: View {
    private let view: SwiftUI.SecureTextField
    public var body: View { view }
}

public extension SecureTextField {
    init() {
        self = Self.init(view: SwiftUI.SecureTextField())
    }
}
