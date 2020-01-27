
import Foundation

public extension SomeView {
    @discardableResult @inlinable func configure(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
