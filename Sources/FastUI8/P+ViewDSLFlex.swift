import FlexLayout

/// VStack vs Column? SwiftUI uses VStack
/// HStack vs Row? SwiftUI uses HStack

@objc
final class FastFlex: NSObject {
    let flex: Flex
    init(flex: Flex) {
        self.flex = flex
    }
}

@objc
protocol ViewDSLFlex: ViewDSL {
    @objc
    func flexWith(_ parent: FastFlex)
}

extension UIView: ViewDSLFlex {
    func flexWith(_ parent: FastFlex) {
        parent.flex.addItem(self)
    }
}

public extension Flex {
    func isReverse(_ isReverse: Bool = true) {
        guard let v = self.view as? FlexView else {
            print("FlexView.error - type: \(type(of: self.view)) is not FlexView")
            return
        }
        if let stack = v as? SwiftUI.VStack {
            stack.isReverse = isReverse
        }
        if let stack = v as? SwiftUI.HStack {
            stack.isReverse = isReverse
        }
    }
}
