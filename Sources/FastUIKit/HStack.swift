//
//  HStack.swift
//  FastUI
//
//  Created by Muis on 11/01/20.
//

import UIKit

public final class HStack: FlexView {
    @objc
    override func flexWith(_ parent: FastFlex) {
        parent.flex
            .addItem(self)
        isReverse = false
    }
    
    var isReverse = false {
        didSet {
            flex.direction(isReverse ? .rowReverse : .row)
        }
    }
}
