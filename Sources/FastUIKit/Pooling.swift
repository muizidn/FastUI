//
//  Pooling.swift
//  ExampleApp
//
//  Created by Muis on 27/01/20.
//

import UIKit

public protocol Poolable {
    static func defaultInit() -> Self
    static var group: String { get }
}

/* For Developer
 General Guideline to Reset UIView object state
    tag = 0
    frame = .zero
    bounds =.zero
    text = ""
    etc...
 */
public protocol Resettable {
    func reset()
}

fileprivate var objects = [String: [Poolable]]()

public func Pool<T>(_ t: T.Type) -> T where T: Poolable {
    var pools = objects[T.group] ?? []
    if let o = pools.popLast() {
        return o as! T
    }
    return T.defaultInit()
}

public func Pool<T>(_ o: T) where T: Resettable & Poolable {
    o.reset()
    var pools = objects[T.group] ?? []
    pools.append(o)
    objects[T.group] = pools
}
