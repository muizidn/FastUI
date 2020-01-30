import UIKit

public struct Divider: View {
    private let view: SwiftUI.Divider
    public var body: View { view }
}

extension Divider: SelfConfigure {
    func configureInParent(_ parent: View) {
        if parent is VStack {
            _flex_height(1)
        }
        if parent is HStack {
            _flex_width(1)
        }
        foregroundColor(.black)
    }
}

public extension Divider {
    init() {
        view = SwiftUI.Divider()
    }
}

extension SwiftUI {
    final class Divider: UIView, View {
        var body: View { self }
    }
}
