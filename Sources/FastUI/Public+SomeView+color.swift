//
//  SomeView+color.swift
//  FastUI
//
//  Created by Muis on 20/01/20.
//

import Foundation

public extension SomeView {
    func color(_ color: Color) -> Self {
        view.backgroundColor = color.toUIColor()
        return self
    }
}
