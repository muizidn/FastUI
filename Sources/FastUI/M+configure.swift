
import Foundation

public extension View {
    @discardableResult @inlinable func _configure(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
