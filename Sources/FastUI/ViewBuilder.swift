import UIKit
import FastUIKit

@_functionBuilder
public struct ViewBuilder {
    public static func buildBlock() -> Void {}
    
    public static func buildBlock(_ view: SomeView) -> SomeView {
        view
    }
    
    public static func buildBlock(_ views: SomeView...) -> SomeView {
        return TupleView.create(TupleView.UIKitView.init(), subViews: views)
    }
    
    public static func buildBlock(view: TupleView) -> SomeView {
        return view
    }
}


func exte() {
    TheInit {
        VStack {
            HStack()
        }
        VStack()
        VStack()
    }
}

func TheInit(@ViewBuilder b: () -> SomeView) {
    
}

func TheInit(@ViewBuilder b: () -> Void) {
    
}
