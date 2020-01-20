//
//  funcs.swift
//  FastUI
//
//  Created by Muis on 20/01/20.
//

import UIKit

public extension SomeView {
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> SomeView {
        view.flex.width(width)
        view.flex.height(height)
        return self
    }
}
