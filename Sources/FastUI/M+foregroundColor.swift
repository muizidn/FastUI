
import Foundation

public extension SomeView {
    @discardableResult @inlinable func foregroundColor(_ color: Color?) -> Self {
        flex_backgroundColor(color?.view.backgroundColor ?? .clear)
    }
}
