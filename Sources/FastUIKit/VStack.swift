//
//  VStack.swift
//  FastUI
//
//  Created by Muis on 11/01/20.
//

import UIKit

public final class VStack: FlexView {
    @objc
    override func flexWith(_ parent: FastFlex) {
        parent.flex
            .addItem(self)
        isReverse = false
    }
    
    var isReverse = false {
        didSet {
            flex.direction(isReverse ? .columnReverse : .column)
        }
    }
}
