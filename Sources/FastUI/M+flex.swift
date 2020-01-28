import Foundation
@_exported import FlexLayout

public extension View {
    @discardableResult @inlinable func _flex(_ closure: (Flex) -> Void) -> Self {
        closure(view(Self.self).flex)
        return self
    }
}

public extension View {
    @discardableResult @inlinable func _flex_isIncludedInLayout(_ included: Bool) -> Self {
        view(Self.self).flex.isIncludedInLayout(included)
        return self
    }
    
    @discardableResult @inlinable func _flex_markDirty() -> Self {
        view(Self.self).flex.markDirty()
        return self
    }
    
    @discardableResult @inlinable func _flex_direction(_ value: FlexLayout.Flex.Direction) -> Self {
        view(Self.self).flex.direction(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_wrap(_ value: FlexLayout.Flex.Wrap) -> Self {
        view(Self.self).flex.wrap(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_layoutDirection(_ value: FlexLayout.Flex.LayoutDirection) -> Self {
        view(Self.self).flex.layoutDirection(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_justifyContent(_ value: FlexLayout.Flex.JustifyContent) -> Self {
        view(Self.self).flex.justifyContent(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_alignItems(_ value: FlexLayout.Flex.AlignItems) -> Self {
        view(Self.self).flex.alignItems(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_alignSelf(_ value: FlexLayout.Flex.AlignSelf) -> Self {
        view(Self.self).flex.alignSelf(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_alignContent(_ value: FlexLayout.Flex.AlignContent) -> Self {
        view(Self.self).flex.alignContent(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_grow(_ value: CGFloat) -> Self {
        view(Self.self).flex.grow(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_shrink(_ value: CGFloat) -> Self {
        view(Self.self).flex.shrink(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_basis(_ value: CGFloat?) -> Self {
        view(Self.self).flex.basis(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_basis(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.basis(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_width(_ value: CGFloat?) -> Self {
        view(Self.self).flex.width(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_width(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.width(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_height(_ value: CGFloat?) -> Self {
        view(Self.self).flex.height(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_height(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.height(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_size(_ size: CGSize?) -> Self {
        view(Self.self).flex.size(size)
        return self
    }
    
    @discardableResult @inlinable func _flex_size(_ sideLength: CGFloat) -> Self {
        view(Self.self).flex.size(sideLength)
        return self
    }
    
    @discardableResult @inlinable func _flex_minWidth(_ value: CGFloat?) -> Self {
        view(Self.self).flex.minWidth(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_minWidth(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.minWidth(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_maxWidth(_ value: CGFloat?) -> Self {
        view(Self.self).flex.maxWidth(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_maxWidth(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.maxWidth(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_minHeight(_ value: CGFloat?) -> Self {
        view(Self.self).flex.minHeight(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_minHeight(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.minHeight(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_maxHeight(_ value: CGFloat?) -> Self {
        view(Self.self).flex.maxHeight(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_maxHeight(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.maxHeight(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_aspectRatio(_ value: CGFloat?) -> Self {
        view(Self.self).flex.aspectRatio(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_aspectRatio(of imageView: UIImageView) -> Self {
        view(Self.self).flex.aspectRatio(of: imageView)
        return self
    }
    
    @discardableResult @inlinable func _flex_position(_ value: FlexLayout.Flex.Position) -> Self {
        view(Self.self).flex.position(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_left(_ value: CGFloat) -> Self {
        view(Self.self).flex.left(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_left(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.left(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_top(_ value: CGFloat) -> Self {
        view(Self.self).flex.top(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_top(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.top(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_right(_ value: CGFloat) -> Self {
        view(Self.self).flex.right(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_right(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.right(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_bottom(_ value: CGFloat) -> Self {
        view(Self.self).flex.bottom(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_bottom(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.bottom(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_start(_ value: CGFloat) -> Self {
        view(Self.self).flex.start(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_start(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.start(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_end(_ value: CGFloat) -> Self {
        view(Self.self).flex.end(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_end(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.end(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_horizontally(_ value: CGFloat) -> Self {
        view(Self.self).flex.horizontally(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_horizontally(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.horizontally(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_vertically(_ value: CGFloat) -> Self {
        view(Self.self).flex.vertically(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_vertically(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.vertically(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_all(_ value: CGFloat) -> Self {
        view(Self.self).flex.all(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_all(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.all(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginTop(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginTop(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginTop(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginTop(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginLeft(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginLeft(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginLeft(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginLeft(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginBottom(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginBottom(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginBottom(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginBottom(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginRight(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginRight(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginRight(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginRight(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginStart(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginStart(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginStart(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginStart(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginEnd(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginEnd(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginEnd(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginEnd(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginHorizontal(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginHorizontal(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginHorizontal(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginHorizontal(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginVertical(_ value: CGFloat) -> Self {
        view(Self.self).flex.marginVertical(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_marginVertical(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.marginVertical(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_margin(_ insets: UIEdgeInsets) -> Self {
        view(Self.self).flex.margin(insets)
        return self
    }
    
    @discardableResult @inlinable func _flex_margin(_ value: CGFloat) -> Self {
        view(Self.self).flex.margin(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_margin(_ percent: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.margin(percent)
        return self
    }
    
    @discardableResult @inlinable func _flex_margin(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        view(Self.self).flex.margin(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func _flex_margin(_ top: FlexLayout.FPercent, _ left: FlexLayout.FPercent, _ bottom: FlexLayout.FPercent, _ right: FlexLayout.FPercent) -> Self {
        view(Self.self).flex.margin(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingTop(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingTop(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingLeft(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingLeft(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingBottom(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingBottom(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingRight(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingRight(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingStart(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingStart(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingEnd(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingEnd(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingHorizontal(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingHorizontal(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_paddingVertical(_ value: CGFloat) -> Self {
        view(Self.self).flex.paddingVertical(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_padding(_ insets: UIEdgeInsets) -> Self {
        view(Self.self).flex.padding(insets)
        return self
    }
    
    @discardableResult @inlinable func _flex_padding(_ value: CGFloat) -> Self {
        view(Self.self).flex.padding(value)
        return self
    }
    
    @discardableResult @inlinable func _flex_padding(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        view(Self.self).flex.padding(top, left, bottom, right)
        return self
    }
    
    @discardableResult @inlinable func _flex_backgroundColor(_ color: UIColor) -> Self {
        view(Self.self).flex.backgroundColor(color)
        return self
    }
    
    @discardableResult @inlinable func _flex_display(_ value: FlexLayout.Flex.Display) -> Self {
        view(Self.self).flex.display(value)
        return self
    }
}
