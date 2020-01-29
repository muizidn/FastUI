#if DEBUG
public protocol View: CustomDebugStringConvertible {
    #if IOS13
    associatedtype Body: View
    var body: Body { get }
    #else
    var body: View { get }
    #endif
}
#else
public protocol View {
    #if IOS13
    associatedtype Body: View
    var body: Body { get }
    #else
    var body: View { get }
    #endif
}
#endif


public extension View {
    func view<T>(_ caller: T.Type = T.self, file: StaticString = #file, fn: StaticString = #function, line: Int = #line) -> UIView {
        var log = {}
        if ProcessInfo.processInfo.environment["FASTUI_PARSE_VIEW"] != nil {
            if ProcessInfo.processInfo.environment["FASTUI_PARSE_VIEW_FILE"] != nil {
                log = {
                    print("\("FASTUI") \(Self.self) at \(file) \(caller).\(fn) \(line)")
                }
            } else {
                log = {
                    print("\("FASTUI") \(Self.self) at \(caller).\(fn) \(line)")
                }
            }
        }
        if let this = self as? UIView {
            defer { log() }
            return this
        } else {
            return body.view(caller, file: file, fn: fn, line: line)
        }
    }
}

extension View  {
    public var debugDescription: String {
        return "\(Self.self)"
    }
    
    func asSubviews() -> [View] {
        if let arr = self as? [View] {
            return arr
        }
        return [self]
    }
    
    func configureInParent(_ parent: View) {
        (self as? SelfConfigure)?
            .configureInParent(parent)
    }
}

extension Array: View where Element: View {
    public var body: View { self }
}


protocol SelfConfigure {
    func configureInParent(_ parent: View)
}
