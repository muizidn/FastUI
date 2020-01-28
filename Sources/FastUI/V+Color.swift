import UIKit

final class _Color: UIView, SomeView {
    var body: SomeView { self }
}
public struct Color: SomeView {
    private let view: _Color
    
    init(_ uiColor: UIColor) {
        let view = _Color()
        view.backgroundColor = uiColor
        self.view = view
    }
    
    public var body: SomeView { view }
}

public extension Color {
    // init(NSColor)
    // init(String, bundle: Bundle?)
    
    init(_ space: Color.RGBColorSpace = .sRGB, red: Double, green: Double, blue: Double, opacity: Double = 1) {
        let color = UIColor.init(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: CGFloat(opacity)
        )
        self = Color.init(color)
    }
    init(_ space: Color.RGBColorSpace = .sRGB, white: Double, opacity: Double) {
        let color = UIColor.init(
            white: CGFloat(white),
            alpha: CGFloat(opacity)
        )
        self = Color.init(color)
    }
    init(hue: Double, saturation: Double, brightness: Double, opacity: Double) {
        let color = UIColor.init(
            hue: CGFloat(hue),
            saturation: CGFloat(saturation),
            brightness: CGFloat(brightness),
            alpha: CGFloat(opacity)
        )
        self = Color.init(color)
    }

}

public extension Color {
    enum RGBColorSpace {
        case sRGB
    }
}

extension Color: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        let rgba = hexStringToRGBA(hex: value)
        self = Color.init(
            red: Double(rgba.red),
            green: Double(rgba.green),
            blue: Double(rgba.blue),
            opacity: Double(rgba.alpha)
        )
    }
}

public extension Color {
    static var black: Color { get { "#000000" } }// 0.0 white
    static var white: Color { get { "#FFFFFF" } }// 1.0 white
    static var red: Color { get { "#FF0000" } }// 1.0, 0.0, 0.0 RGB
    static var green: Color { get { "#00FF00" } }// 0.0, 1.0, 0.0 RGB
    static var blue: Color { get { "#0000FF" } }// 0.0, 0.0, 1.0 RGB
    static var cyan: Color { get { "#00FFFF" } }// 0.0, 1.0, 1.0 RGB
    static var yellow: Color { get { "#FFFF00" } }// 1.0, 1.0, 0.0 RGB
    static var magenta: Color { get { "#FF00FF" } }// 1.0, 0.0, 1.0 RGB
    static var orange: Color { get { "#FFA500" } } // 1.0, 0.5, 0.0 RGB
    static var purple: Color { get { "#6A0DAD" } }// 0.5, 0.0, 0.5 RGB
    static var brown: Color { get { "#964B00" } }// 0.6, 0.4, 0.2 RGB
    static var clear: Color { get { Color.init(red: 0, green: 0, blue: 0) }}
}

/// https://stackoverflow.com/a/27203596

fileprivate func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        fatalError()
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

fileprivate func hexStringToRGBA (hex:String) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        fatalError()
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return (
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
