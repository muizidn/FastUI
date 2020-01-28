import Foundation
import FastUIKit

public struct EmptyView: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.EmptyView
    public static func create(_ view: FastUIKit.EmptyView, subViews: [SomeView]) -> EmptyView {
        if !subViews.isEmpty { fatalError() }
        return Self.init(_view: view)
    }
}

public extension EmptyView {
    init() {
        self = Self.create(Self.UIKitView.init(), subViews: [])
    }
}
