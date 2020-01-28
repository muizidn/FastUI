import UIKit

extension _EmptyView: SomeView {
    var body: SomeView { self }
}

public struct EmptyView: SomeView {
    private let view: _EmptyView
    public var body: SomeView { view }
}

public extension EmptyView {
    init() {
        view = _EmptyView()
    }
}
