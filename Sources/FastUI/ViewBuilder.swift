import UIKit

@_functionBuilder
public struct ViewBuilder {
    
    public static func buildBlock(_ view: View) -> View { view }
    
    public static func buildBlock(_ views: View...) -> View {
        TupleView.init(views)
    }
}
