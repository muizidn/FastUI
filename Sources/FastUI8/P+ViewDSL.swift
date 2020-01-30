// https://github.com/muizidn/viewdsl/tree/0.0.6 with
// with modifications

typealias ViewType = UIView
@objc
protocol ViewDSL: class {
    @objc
    func put(_ view: ViewType)
}

extension ViewType: ViewDSL {}

extension ViewType {
    @objc
    func put(_ view: ViewType) {
        addSubview(view)
    }
}

extension ViewDSL {
    
    /// Base DSL
    ///
    /// - Parameter closure: callback with explicit parameter type. e.g: (stack: UIStackView)
    /// - Returns: ViewType instance of closure parameter type
    @discardableResult
    func add<T>(_ closure: (T) -> Void) -> T where T: ViewType {
        let view = T()
        put(view)
        closure(view)
        return view
    }
    
    
    /// Base DSL
    ///
    /// - Parameter closure: function to build ViewType instance
    /// - Returns: ViewType instance of closure return type
    @discardableResult
    func add<T>(_ closure: () -> T) -> T where T: ViewType {
        let view = closure()
        put(view)
        return view
    }
    
    
    
    /// Base DSL
    ///
    /// - Parameters:
    ///   - view: view instance being
    ///   - closure: closure to be applied to view
    /// - Returns: instace of view after closure applied
    @discardableResult
    func add<T>(_ view: T, closure: ((T) -> Void)? = nil) -> T where T: ViewType {
        put(view)
        defer { closure?(view) }
        return view
    }
}

