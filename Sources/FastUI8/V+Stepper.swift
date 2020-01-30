import UIKit

public struct Stepper: View {
    private let view: SwiftUI.Stepper
    public var body: View { view }
}

extension Stepper: SelfConfigure {
    func configureInParent(_ parent: View) {
    }
}

public extension Stepper {
    init() {
        view = SwiftUI.Stepper()
    }
}

extension SwiftUI {
    final class Stepper: UIStepper, View {
        var body: View { self }
    }
}
