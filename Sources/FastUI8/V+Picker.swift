import UIKit

public struct Picker: View {
    private let view: SwiftUI.Picker
    public var body: View { view }
}

extension Picker: SelfConfigure {
    func configureInParent(_ parent: View) {
    }
}

public extension Picker {
    init() {
        view = SwiftUI.Picker()
    }
}

extension SwiftUI {
    final class Picker: UIPickerView, View {
        var body: View { self }
    }
}
