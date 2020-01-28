import UIKit

extension _EmptyView: View {
    var body: View { self }
}

public struct EmptyView: View {
    private let view: _EmptyView
    public var body: View { view }
}

public extension EmptyView {
    init() {
        view = _EmptyView()
    }
}
