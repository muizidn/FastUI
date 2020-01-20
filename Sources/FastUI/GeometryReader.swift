//
//  GeometryReader.swift
//  ExampleApp
//
//  Created by Muis on 20/01/20.
//

import FastUIKit
import UIKit

public struct GeometryReader: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: UIView
    public static func create(_ view: UIView, subViews: [SomeView]) -> GeometryReader {
        subViews.forEach({
            view.put($0.view)
        })
        return Self.init(_view: view)
    }
    
    public static func create(_ view: UIView, subViews: [SomeView]) -> SomeView {
        subViews.forEach({
            view.put($0.view)
        })
        return Self.init(_view: view)
    }
}

public extension GeometryReader {
    init(@ViewBuilder<Self> builder: (GeometryReader) -> Self) {
        self = builder(
            Self.create(Self.UIKitView.init(),subViews: [])
        )
    }
    
    var debugDescription: String {
        "view.recursiveDescription()"
    }
}
