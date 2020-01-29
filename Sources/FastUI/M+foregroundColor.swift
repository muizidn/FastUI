
import Foundation

public extension View {
    @discardableResult func foregroundColor(_ color: Color?) -> Self {
        _flex_backgroundColor(color?.view(Self.self).backgroundColor ?? .clear)
    }
}
