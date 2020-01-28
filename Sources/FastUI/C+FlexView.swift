import UIKit
import FlexLayout

public class FlexView: UIView {
    @objc
    public override func put(_ view: UIView) {
        view.flexWith(FastFlex(flex: flex))
    }
    
    var isRoot = true
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        if isRoot {
            var insets: UIEdgeInsets = .zero
            if #available(iOS 11.0, *) {
                insets = safeAreaInsets
            }
            flex.padding(insets)
        }
        flex.layout()
    }
}
