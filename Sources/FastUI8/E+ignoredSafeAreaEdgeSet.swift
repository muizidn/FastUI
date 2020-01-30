// https://nshipster.com/swift-objc-runtime/

extension UIView {
    private struct AssociatedKeys {
        static var DescriptiveName = "fastui_ignoreSafeAreaEdgeInset"
    }

    var ignoredSafeAreaEdgeSet: Edge.Set? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.DescriptiveName) as? Edge.Set
        }

        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.DescriptiveName,
                    newValue as Edge.Set?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }
}
