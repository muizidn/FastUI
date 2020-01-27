//
//  TupleView.swift
//  FastUIKit
//
//  Created by Muis on 27/01/20.
//

import UIKit

public final class TupleView<View>: UIView {
    public var contents: [View] = []
}

extension TupleView: ExpressibleByArrayLiteral {
    convenience public init(arrayLiteral elements: View...) {
        self.init()
        self.contents = elements
    }
    
    public typealias ArrayLiteralElement = View
}
