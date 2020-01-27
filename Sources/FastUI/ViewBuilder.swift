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

public func testOnly() -> SomeView {
    VStack {
        VStack {
            HStack()
        }
        .frame(height: 30)
        .foregroundColor(.red)
        HStack {
            VStack()
        }
        .frame(height: 30)
        .foregroundColor(.blue)
    }
    .foregroundColor(.cyan)
}
