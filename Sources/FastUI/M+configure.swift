
import Foundation

public extension SomeView {
    @discardableResult func configure(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
