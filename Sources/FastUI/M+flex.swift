//
//  M+flex.swift
//  ExampleApp
//
//  Created by Muis on 27/01/20.
//

import Foundation
@_exported import FlexLayout

public extension SomeView {
    @inlinable func flex(_ closure: (Flex) -> Void) -> Self {
        closure(view.flex)
        return self
    }
}
