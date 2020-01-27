//
//  ViewAndLayoutPresentation.swift
//  FastUIKit
//
//  Created by Muis on 27/01/20.
//

import UIKit

public final class HStack: FlexView {
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


public final class VStack: FlexView {
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

// public final class ZStack: UIView {}
// public final class List: UIView {}
// public final class ForEach: UIView {}
// public final class ScrollView: UIView {}
// public final class Form: UIView {}
// public final class Group: UIView {}
// public final class GroupBox: UIView {}
// public final class Section: UIView {}
// public final class Spacer: UIView {}
// public final class Divider: UIView {}
// public final class NavigationView: UIView {}
// public final class TabView: UIView {}
// public final class HSplitView: UIView {}
// public final class VSplitView: UIView {}
// public final class Alert: UIView {}
// public final class ActionSheet: UIView {}

public final class EmptyView: UIView {}

// public final class EquatableView: UIView {}
// public final class AnyView: UIView {}

public final class TupleView<View>: UIView {
    public var contents: [View] = []
}
