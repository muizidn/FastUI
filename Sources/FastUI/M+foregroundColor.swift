
import Foundation

public extension SomeView {
    @discardableResult func foregroundColor(_ color: Color?) -> Self {
        flex_backgroundColor(color?.view(Self.self).backgroundColor ?? .clear)
    }
}
