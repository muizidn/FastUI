extension SwiftUI {
    final class Text: UILabel {}
    
    final class TextField: UITextField {}
    
    final class SecureTextField: UITextField {
        override init(frame: CGRect = .zero) {
            super.init(frame: frame)
            isSecureTextEntry = true
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
    final class Font: UILabel {}
    
    // final class Image: UIView {}
    
    final class Button: UIButton {
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
    
    // final class NavigationLink: UIView {}
    
    // final class MenuButton: UIView {}
    
    // final class EditButton: UIView {}
    
    // final class PasteButton: UIView {}
    
    // final class Toggle: UIView {}
    
    // final class Picker: UIView {}
    
    // final class DatePicker: UIView {}
    
    // final class Slider: UIView {}
    
    // final class Stepper: UIView {}
    
}
