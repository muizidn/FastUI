
import Foundation

public extension SomeView {
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        view.flex.width(width)
        view.flex.height(height)
        return self
    }
}
