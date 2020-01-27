//
//  Text.swift
//  FastUIKit
//
//  Created by Muis on 27/01/20.
//

import UIKit

public final class Text: UILabel {}

public final class TextField: UITextField {}

public final class SecureTextField: UITextField {}

public final class Font: UILabel {}

// public final class Image: UIView {}

 public final class Button: UIButton {
    public var label: UILabel = UILabel() {
        didSet {
            setTitle(label.text, for: .normal)
        }
    }
    public var action: () -> Void = {} {
        didSet {
            self.addTarget(
                self,
                action: #selector(callAction),
                for: .touchUpInside)
        }
    }
    
    @objc func callAction() {
        action()
    }
}

// public final class NavigationLink: UIView {}

// public final class MenuButton: UIView {}

// public final class EditButton: UIView {}

// public final class PasteButton: UIView {}

// public final class Toggle: UIView {}

// public final class Picker: UIView {}

// public final class DatePicker: UIView {}

// public final class Slider: UIView {}

// public final class Stepper: UIView {}

