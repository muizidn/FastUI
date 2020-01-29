extension SwiftUI.EmptyView: View {
    var body: View { self }
}

public struct EmptyView: View {
    private let view: SwiftUI.EmptyView
    public var body: View { view }
}

public extension EmptyView {
    init() {
        view = SwiftUI.EmptyView()
    }
}
