import UIKit

final class _HStack: FlexView {
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


final class _VStack: FlexView {
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

// final class _ZStack: UIView {}
// final class _List: UIView {}
// final class _ForEach: UIView {}
// final class _ScrollView: UIView {}
// final class _Form: UIView {}
// final class _Group: UIView {}
// final class _GroupBox: UIView {}
// final class _Section: UIView {}
// final class _Spacer: UIView {}
// final class _Divider: UIView {}
// final class _NavigationView: UIView {}
// final class _TabView: UIView {}
// final class _HSplitView: UIView {}
// final class _VSplitView: UIView {}
// final class _Alert: UIView {}
// final class _ActionSheet: UIView {}

final class _EmptyView: UIView {}

// final class _EquatableView: UIView {}
// final class _AnyView: UIView {}

final class _TupleView<View>: UIView {
    public var contents: [View] = []
}
