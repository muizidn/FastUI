import UIKit

public struct Slider: View {
    private let view: SwiftUI.Slider
    public var body: View { view }
}

extension Slider: SelfConfigure {
    func configureInParent(_ parent: View) {
       
    }
}

public extension Slider {
    init() {
        view = SwiftUI.Slider()
    }
}

extension SwiftUI {
    final class Slider: UISlider, View {
        var body: View { self }
    }
}
