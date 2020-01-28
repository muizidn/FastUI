import UIKit

final class _Text: UILabel {}

final class _TextField: UITextField {}

final class _SecureTextField: UITextField {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        isSecureTextEntry = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class _Font: UILabel {}

// final class _Image: UIView {}

 final class _Button: UIButton {
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

// final class _NavigationLink: UIView {}

// final class _MenuButton: UIView {}

// final class _EditButton: UIView {}

// final class _PasteButton: UIView {}

// final class _Toggle: UIView {}

// final class _Picker: UIView {}

// final class _DatePicker: UIView {}

// final class _Slider: UIView {}

// final class _Stepper: UIView {}

