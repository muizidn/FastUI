//
//  HStack.swift
//  FastUI
//
//  Created by Muis on 11/01/20.
//

import UIKit
import FastUIKit

public struct HStack: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: FastUIKit.HStack
    public static func create(_ view: FastUIKit.HStack, subViews: [SomeView]) -> HStack {
        subViews.forEach({
            view.put($0.view)
        })
        return Self.init(_view: view)
    }
    
    public static func create(_ view: FastUIKit.HStack, subViews: [SomeView]) -> SomeView {
        subViews.forEach({
            view.put($0.view)
        })
        return Self.init(_view: view)
    }
}
