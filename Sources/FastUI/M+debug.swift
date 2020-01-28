
import Foundation

public extension View {
    @discardableResult @inlinable func debug(_ i: String = #function) -> Self {
        print("FASTUI \(i) :", self)
        return self
    }
}
