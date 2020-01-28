import UIKit

@_functionBuilder
public struct ViewBuilder {
    
    public static func buildBlock(_ view: SomeView) -> SomeView { view }
    
    public static func buildBlock(_ views: SomeView...) -> SomeView {
        TupleView.init(views)
    }
}
