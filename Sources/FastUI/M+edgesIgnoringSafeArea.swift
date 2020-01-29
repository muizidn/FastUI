import UIKit

public extension View {
    func edgesIgnoringSafeArea(_ edges: Edge.Set) -> Self {
        if let view = self.view(Self.self) as? FlexView {
            view.ignoredSafeAreaEdgeSet = edges
        }
        return self
    }
}
