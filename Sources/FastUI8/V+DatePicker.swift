import UIKit

public struct DatePicker: View {
    private let view: SwiftUI.DatePicker
    public var body: View { view }
}

extension DatePicker: SelfConfigure {
    func configureInParent(_ parent: View) {
    }
}

public extension DatePicker {
    init() {
        view = SwiftUI.DatePicker()
    }
}

extension SwiftUI {
    final class DatePicker: UIDatePicker, View {
        var body: View { self }
    }
}
