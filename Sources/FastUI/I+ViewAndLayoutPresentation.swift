extension SwiftUI {
    final class HStack: FlexView {
        @objc
        override func flexWith(_ parent: FastFlex) {
            parent.flex
                .addItem(self)
            isReverse = false
        }
        
        var isReverse = false {
            didSet {
                flex.direction(isReverse ? .rowReverse : .row)
            }
        }
    }
    
    
    final class VStack: FlexView {
        @objc
        override func flexWith(_ parent: FastFlex) {
            parent.flex
                .addItem(self)
            isReverse = false
        }
        
        var isReverse = false {
            didSet {
                flex.direction(isReverse ? .columnReverse : .column)
            }
        }
    }
    
    // final class ZStack: UIView {}
    // final class List: UIView {}
    // final class ForEach: UIView {}
    // final class ScrollView: UIView {}
    // final class Form: UIView {}
    // final class Group: UIView {}
    // final class GroupBox: UIView {}
    // final class Section: UIView {}
    // final class Spacer: UIView {}
    // final class Divider: UIView {}
    // final class NavigationView: UIView {}
    // final class TabView: UIView {}
    // final class HSplitView: UIView {}
    // final class VSplitView: UIView {}
    // final class Alert: UIView {}
    // final class ActionSheet: UIView {}
    
    final class EmptyView: UIView {}
    
    // final class EquatableView: UIView {}
    // final class AnyView: UIView {}
}
