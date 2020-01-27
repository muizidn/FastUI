import Foundation
@_exported import FlexLayout

public extension SomeView {
    @discardableResult @inlinable func flex(_ closure: (Flex) -> Void) -> Self {
        closure(view.flex)
        return self
    }
}

public extension SomeView {
    @discardableResult @inlinable func flex_isIncludedInLayout(_ included: Bool) -> Self {
        view.flex.isIncludedInLayout(included)
        return self
    }
    
    @discardableResult @inlinable func flex_markDirty() -> Self {
        view.flex.markDirty()
        return self
    }
    
    @discardableResult @inlinable func flex_direction(_ value: FlexLayout.Flex.Direction) -> Self {
        view.flex.direction(value)
        return self
    }
    
    @discardableResult @inlinable func flex_wrap(_ value: FlexLayout.Flex.Wrap) -> Self {
        view.flex.wrap(value)
        return self
    }
    
    @discardableResult @inlinable func flex_layoutDirection(_ value: FlexLayout.Flex.LayoutDirection) -> Self {
        view.flex.layoutDirection(value)
        return self
    }
    
    @discardableResult @inlinable func flex_justifyContent(_ value: FlexLayout.Flex.JustifyContent) -> Self {
        view.flex.justifyContent(value)
        return self
    }
    
    @discardableResult @inlinable func flex_alignItems(_ value: FlexLayout.Flex.AlignItems) -> Self {
        view.flex.alignItems(value)
        return self
    }
    
    @discardableResult @inlinable func flex_alignSelf(_ value: FlexLayout.Flex.AlignSelf) -> Self {
        view.flex.alignSelf(value)
        return self
    }
    
    @discardableResult @inlinable func flex_alignContent(_ value: FlexLayout.Flex.AlignContent) -> Self {
        view.flex.alignContent(value)
        return self
    }
    
    @discardableResult @inlinable func flex_grow(_ value: CGFloat) -> Self {
        view.flex.grow(value)
        return self
    }
    
    @discardableResult @inlinable func flex_shrink(_ value: CGFloat) -> Self {
        view.flex.shrink(value)
        return self
    }
    
    @discardableResult @inlinable func flex_basis(_ value: CGFloat?) -> Self {
        view.flex.basis(value)
        return self
    }
    
    @discardableResult @inlinable func flex_basis(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.basis(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_width(_ value: CGFloat?) -> Self {
        view.flex.width(value)
        return self
    }
    
    @discardableResult @inlinable func flex_width(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.width(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_height(_ value: CGFloat?) -> Self {
        view.flex.height(value)
        return self
    }
    
    @discardableResult @inlinable func flex_height(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.height(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_size(_ size: CGSize?) -> Self {
        view.flex.size(size)
        return self
    }
    
    @discardableResult @inlinable func flex_size(_ sideLength: CGFloat) -> Self {
        view.flex.size(sideLength)
        return self
    }
    
    @discardableResult @inlinable func flex_minWidth(_ value: CGFloat?) -> Self {
        view.flex.minWidth(value)
        return self
    }
    
    @discardableResult @inlinable func flex_minWidth(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.minWidth(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_maxWidth(_ value: CGFloat?) -> Self {
        view.flex.maxWidth(value)
        return self
    }
    
    @discardableResult @inlinable func flex_maxWidth(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.maxWidth(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_minHeight(_ value: CGFloat?) -> Self {
        view.flex.minHeight(value)
        return self
    }
    
    @discardableResult @inlinable func flex_minHeight(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.minHeight(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_maxHeight(_ value: CGFloat?) -> Self {
        view.flex.maxHeight(value)
        return self
    }
    
    @discardableResult @inlinable func flex_maxHeight(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.maxHeight(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_aspectRatio(_ value: CGFloat?) -> Self {
        view.flex.aspectRatio(value)
        return self
    }
    
    @discardableResult @inlinable func flex_aspectRatio(of imageView: UIImageView) -> Self {
        view.flex.aspectRatio(of: imageView)
        return self
    }
    
    @discardableResult @inlinable func flex_position(_ value: FlexLayout.Flex.Position) -> Self {
        view.flex.position(value)
        return self
    }
    
    @discardableResult @inlinable func flex_left(_ value: CGFloat) -> Self {
        view.flex.left(value)
        return self
    }
    
    @discardableResult @inlinable func flex_left(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.left(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_top(_ value: CGFloat) -> Self {
        view.flex.top(value)
        return self
    }
    
    @discardableResult @inlinable func flex_top(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.top(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_right(_ value: CGFloat) -> Self {
        view.flex.right(value)
        return self
    }
    
    @discardableResult @inlinable func flex_right(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.right(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_bottom(_ value: CGFloat) -> Self {
        view.flex.bottom(value)
        return self
    }
    
    @discardableResult @inlinable func flex_bottom(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.bottom(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_start(_ value: CGFloat) -> Self {
        view.flex.start(value)
        return self
    }
    
    @discardableResult @inlinable func flex_start(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.start(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_end(_ value: CGFloat) -> Self {
        view.flex.end(value)
        return self
    }
    
    @discardableResult @inlinable func flex_end(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.end(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_horizontally(_ value: CGFloat) -> Self {
        view.flex.horizontally(value)
        return self
    }
    
    @discardableResult @inlinable func flex_horizontally(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.horizontally(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_vertically(_ value: CGFloat) -> Self {
        view.flex.vertically(value)
        return self
    }
    
    @discardableResult @inlinable func flex_vertically(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.vertically(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_all(_ value: CGFloat) -> Self {
        view.flex.all(value)
        return self
    }
    
    @discardableResult @inlinable func flex_all(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.all(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginTop(_ value: CGFloat) -> Self {
        view.flex.marginTop(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginTop(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginTop(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginLeft(_ value: CGFloat) -> Self {
        view.flex.marginLeft(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginLeft(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginLeft(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginBottom(_ value: CGFloat) -> Self {
        view.flex.marginBottom(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginBottom(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginBottom(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginRight(_ value: CGFloat) -> Self {
        view.flex.marginRight(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginRight(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginRight(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginStart(_ value: CGFloat) -> Self {
        view.flex.marginStart(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginStart(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginStart(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginEnd(_ value: CGFloat) -> Self {
        view.flex.marginEnd(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginEnd(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginEnd(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginHorizontal(_ value: CGFloat) -> Self {
        view.flex.marginHorizontal(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginHorizontal(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginHorizontal(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_marginVertical(_ value: CGFloat) -> Self {
        view.flex.marginVertical(value)
        return self
    }
    
    @discardableResult @inlinable func flex_marginVertical(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.marginVertical(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_margin(_ insets: UIEdgeInsets) -> Self {
        view.flex.margin(insets)
        return self
    }
    
    @discardableResult @inlinable func flex_margin(_ value: CGFloat) -> Self {
        view.flex.margin(value)
        return self
    }
    
    @discardableResult @inlinable func flex_margin(_ percent: FlexLayout.FPercent) -> Self {
        view.flex.margin(percent)
        return self
    }
    
    @discardableResult @inlinable func flex_margin(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        view.flex.margin(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func flex_margin(_ top: FlexLayout.FPercent, _ left: FlexLayout.FPercent, _ bottom: FlexLayout.FPercent, _ right: FlexLayout.FPercent) -> Self {
        view.flex.margin(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingTop(_ value: CGFloat) -> Self {
        view.flex.paddingTop(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingLeft(_ value: CGFloat) -> Self {
        view.flex.paddingLeft(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingBottom(_ value: CGFloat) -> Self {
        view.flex.paddingBottom(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingRight(_ value: CGFloat) -> Self {
        view.flex.paddingRight(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingStart(_ value: CGFloat) -> Self {
        view.flex.paddingStart(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingEnd(_ value: CGFloat) -> Self {
        view.flex.paddingEnd(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingHorizontal(_ value: CGFloat) -> Self {
        view.flex.paddingHorizontal(value)
        return self
    }
    
    @discardableResult @inlinable func flex_paddingVertical(_ value: CGFloat) -> Self {
        view.flex.paddingVertical(value)
        return self
    }
    
    @discardableResult @inlinable func flex_padding(_ insets: UIEdgeInsets) -> Self {
        view.flex.padding(insets)
        return self
    }
    
    @discardableResult @inlinable func flex_padding(_ value: CGFloat) -> Self {
        view.flex.padding(value)
        return self
    }
    
    @discardableResult @inlinable func flex_padding(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        view.flex.padding(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func flex_backgroundColor(_ color: UIColor) -> Self {
        view.flex.backgroundColor(color)
        return self
    }
    
    @discardableResult @inlinable func flex_display(_ value: FlexLayout.Flex.Display) -> Self {
        view.flex.display(value)
        return self
    }
}
