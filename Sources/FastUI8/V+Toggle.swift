import UIKit

public struct Toggle: View {
    private let view: SwiftUI.Toggle
    public var body: View { view }
}

extension Toggle: SelfConfigure {
    func configureInParent(_ parent: View) {
        
    }
}

public extension Toggle {
    init(minLength: CGFloat? = nil) {
        view = SwiftUI.Toggle()
    }
}

extension SwiftUI {
    final class Toggle: UISwitch, View {
        var body: View { self }
    }
}

