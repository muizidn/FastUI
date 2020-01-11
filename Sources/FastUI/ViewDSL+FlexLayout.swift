import UIKit
import ViewDSL
import FlexLayout

/// VStack vs Column? SwiftUI uses VStack
/// HStack vs Row? SwiftUI uses HStack

@objc
fileprivate final class _Flex: NSObject {
  let flex: Flex
  init(flex: Flex) {
    self.flex = flex
  }
}

@objc
fileprivate protocol ViewDSLFlex: ViewDSL {
  @objc
  func flexWith(_ parent: _Flex)
}

extension UIView: ViewDSLFlex {
  fileprivate func flexWith(_ parent: _Flex) {
    parent.flex.addItem(self)
  }
}


class FlexView: UIView {
  @objc
  public override func put(_ view: UIView) {
    view.flexWith(_Flex(flex: flex))
  }
  
  var isUsingSafeArea = true
  
  override func layoutSubviews() {
    super.layoutSubviews()
    var insets: UIEdgeInsets = .zero
    if isUsingSafeArea {
      if #available(iOS 11.0, *) {
        insets = safeAreaInsets
      }
    }
    
    flex.padding(insets)
    flex.layout()
  }
}

final class VStack: FlexView {
  @objc
  fileprivate override func flexWith(_ parent: _Flex) {
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

final class HStack: FlexView {
  @objc
  fileprivate override func flexWith(_ parent: _Flex) {
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

extension Flex {
  func isReverse(_ isReverse: Bool = true) {
    guard let v = self.view as? FlexView else {
      print("FlexView.error - type: \(type(of: self.view)) is not FlexView")
      return
    }
    if let stack = v as? VStack {
      stack.isReverse = isReverse
    }
    if let stack = v as? HStack {
      stack.isReverse = isReverse
    }
  }
}
