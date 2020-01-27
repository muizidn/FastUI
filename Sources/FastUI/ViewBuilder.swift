import UIKit
import FastUIKit

@_functionBuilder
public struct ViewBuilder {
    
    public static func buildBlock(_ view: SomeView) -> SomeView { view }
    
    public static func buildBlock(_ views: SomeView...) -> SomeView {
        TupleView.create(TupleView.UIKitView.init(), subViews: views)
    }
    
    public static func buildBlock(view: TupleView) -> SomeView { view }
}
