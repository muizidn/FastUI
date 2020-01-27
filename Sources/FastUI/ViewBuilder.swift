import UIKit
import FastUIKit

@_functionBuilder
public struct ViewBuilder<T: SomeView & UIKitContainer> {
    public static func buildBlock(_ views: SomeView...) -> T {
        T.create(T.UIKitView.init(), subViews: views)
    }
    
    /*  This func just replacement for buildExpression
        VStack {
            HStack()
        }
        
        This expression will be parsed by buildBlock(_ views: SomeView...)
        VStack {
            HStack()
            HStack()
        }
     */
    public static func buildBlock(_ view1: SomeView, view2: SomeView? = nil) -> T {
        if view2 != nil { fatalError("view2 is just placeholder") }
        return T.create(T.UIKitView.init(), subViews: [view1])
    }
    
    // https://github.com/muizidn/FastUI/issues/1
    public static func buildExpression(_ view: SomeView) -> T {
        T.create(T.UIKitView.init(), subViews: [view])
    }
    
    public static func buildBlock(_ view: T.UIKitView, views: SomeView...) -> T {
        T.create(view, subViews: views)
    }
}
