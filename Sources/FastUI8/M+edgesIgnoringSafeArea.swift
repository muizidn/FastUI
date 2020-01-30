import UIKit

public extension View {
    func edgesIgnoringSafeArea(_ edges: Edge.Set) -> Self {
        view(Self.self).ignoredSafeAreaEdgeSet = edges
        return self
    }
}
