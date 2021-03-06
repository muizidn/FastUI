
extension SwiftUI.Text: View {
    public var body: View { self }
}

public struct Text: View {
    private let view: SwiftUI.Text
    
    public var body: View { view }
}

public extension Text {
    init<S>(_ s: S) where S: StringProtocol {
        let text = SwiftUI.Text()
        text.text = String.init(s)
        self = Self.init(view: text)
    }
}

extension SwiftUI {
    final class Text: UILabel {}
}
