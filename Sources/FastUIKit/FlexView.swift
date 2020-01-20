//
//  FlexView.swift
//  FastUI
//
//  Created by Muis on 11/01/20.
//

import UIKit
import FlexLayout

public class FlexView: UIView {
    @objc
    public override func put(_ view: UIView) {
        view.flexWith(FastFlex(flex: flex))
    }
    
    var isUsingSafeArea = true
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        var insets: UIEdgeInsets = .zero
        if isUsingSafeArea {
            if #available(iOS 11.0, *) {
                insets = safeAreaInsets
            }
        }
        flex.padding(insets)
        flex.layout()
    }
}
