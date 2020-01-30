import UIKit

public struct Image: View {
    private let view: SwiftUI.Image
    public var body: View { view }
}

extension Image: SelfConfigure {
    func configureInParent(_ parent: View) {
        if let image = view.image {
            _flex_size(image.size)
        }
    }
}

public extension Image {
    init<S>(systemName: S) where S: StringProtocol {
        view = SwiftUI.Image()
        if #available(iOS 13.0, *) {
            view.image = UIImage.init(systemName: String(systemName))
        } else {
            
        }
    }
}

extension SwiftUI {
    final class Image: UIImageView, View {
        var body: View { self }
    }
}
