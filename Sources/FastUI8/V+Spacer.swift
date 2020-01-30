import UIKit

public struct Spacer: View {
    private let minLength: CGFloat?
    private let view: SwiftUI.Spacer
    public var body: View { view }
}

extension Spacer: SelfConfigure {
    func configureInParent(_ parent: View) {
        if parent is VStack {
            if let length = minLength {
                _flex_height(length)
            } else {
                _flex_height(8)
            }
        }
        if parent is HStack {
            if let length = minLength {
                _flex_width(length)
            } else {
                _flex_width(8)
            }
        }
    }
}

public extension Spacer {
    init(minLength: CGFloat? = nil) {
        view = SwiftUI.Spacer()
        self.minLength = minLength
    }
}

extension SwiftUI {
    final class Spacer: UIView, View {
        var body: View { self }
    }
}
