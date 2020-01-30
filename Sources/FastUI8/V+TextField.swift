extension SwiftUI.TextField: View {
    public var body: View { self }
}

public struct TextField: View {
    private let view: SwiftUI.TextField
    public var body: View { view }
    
    
}

public extension TextField {
    init(_ placeholder: String) {
        self = Self.init(view: SwiftUI.TextField())
        view.placeholder = placeholder
    }
}
