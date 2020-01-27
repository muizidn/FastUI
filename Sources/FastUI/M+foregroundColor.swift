
import Foundation

public extension SomeView {
    @inlinable func foregroundColor(_ color: Color?) -> Self {
        view.backgroundColor = color?.view.backgroundColor
        return self
    }
}
