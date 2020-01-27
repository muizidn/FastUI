import UIKit
import FastUIKit

@_functionBuilder
public struct ViewBuilder {
//    public static func buildBlock() -> Void {}
    
    public static func buildBlock(_ view: SomeView) -> SomeView {
        view
    }
    
    public static func buildBlock(_ views: SomeView...) -> [SomeView] {
        views
    }
}
