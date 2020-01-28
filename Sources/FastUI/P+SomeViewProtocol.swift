import UIKit

public protocol SomeView: CustomDebugStringConvertible {
    var body: SomeView { get }
}

public extension SomeView {
    func view<T>(_ caller: T.Type = T.self, file: StaticString = #file, fn: StaticString = #function, line: Int = #line) -> UIView {
        var log = ""
        if ProcessInfo.processInfo.environment["FASTUI_PARSE_VIEW"] != nil {
            if ProcessInfo.processInfo.environment["FASTUI_PARSE_VIEW_FILE"] != nil {
                log += "\("FASTUI") \(Self.self) at \(file) \(caller).\(fn) \(line)"
            } else {
                log += "\("FASTUI") \(Self.self) at \(caller).\(fn) \(line)"
            }
        }
        if let this = self as? UIView {
            defer { print(log) }
            return this
        } else {
            return body.view(caller, file: file, fn: fn, line: line)
        }
    }
}

extension SomeView  {
    public var debugDescription: String {
        return "\(Self.self)"
    }
    
    func asSubviews() -> [SomeView] {
        if let arr = self as? [SomeView] {
            return arr
        }
        return [self]
    }
}

extension Array: SomeView where Element: SomeView {
    public var body: SomeView { self }
}
