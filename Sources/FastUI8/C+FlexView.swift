import FlexLayout

public class FlexView: UIView {
    internal override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    }
    
    internal required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    override func put(_ view: UIView) {
        view.flexWith(FastFlex(flex: flex))
    }
    
    var ignoredSafeAreaEdgeSet: Edge.Set?
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        var insets: UIEdgeInsets = {
            if #available(iOS 11.0, *) {
                return safeAreaInsets
            } else {
                return .zero
            }
        }()
        
        let ignoredSet = ignoredSafeAreaEdgeSet ?? .init()
        
        if ignoredSet.contains(.top) {
            insets.top = 0
        }
        if ignoredSet.contains(.leading) {
            insets.left = 0
        }
        if ignoredSet.contains(.bottom) {
            insets.bottom = 0
        }
        if ignoredSet.contains(.trailing) {
            insets.right = 0
        }
        
        flex.margin(insets)
        flex.layout()
    }
}