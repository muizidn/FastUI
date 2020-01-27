
import UIKit

public struct Color: SomeView, UIKitContainer {
    public var view: UIView { return _view }
    public let _view: UIView
    public static func create(_ view: UIView, subViews: [SomeView]) -> Color {
        subViews.forEach({
            view.put($0.view)
        })
        return Self.init(_view: view)
    }
}

extension Color {
    init(_ uiColor: UIColor) {
        let view = UIView()
        view.backgroundColor = uiColor
        self = Self.init(_view: view)
    }
    
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

extension Color {
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
    static let black: Color = "#000000"// 0.0 white
    //    static let darkGray: Color = // 0.333 white
    //    static let lightGray: Color = // 0.667 white
    static let white: Color = "#FFFFFF"// 1.0 white
    //    static let gray: Color = // 0.5 white
    static let red: Color = "#FF0000"// 1.0, 0.0, 0.0 RGB
    static let green: Color = "#00FF00"// 0.0, 1.0, 0.0 RGB
    static let blue: Color = "#0000FF"// 0.0, 0.0, 1.0 RGB
    static let cyan: Color = "#00FFFF"// 0.0, 1.0, 1.0 RGB
    static let yellow: Color = "#FFFF00"// 1.0, 1.0, 0.0 RGB
    static let magenta: Color = "#FF00FF"// 1.0, 0.0, 1.0 RGB
    static let orange: Color = "#FFA500" // 1.0, 0.5, 0.0 RGB
    static let purple: Color = "#6A0DAD"// 0.5, 0.0, 0.5 RGB
    static let brown: Color = "#964B00"// 0.6, 0.4, 0.2 RGB
    static let clear: Color = Color.init(red: 0, green: 0, blue: 0)
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
