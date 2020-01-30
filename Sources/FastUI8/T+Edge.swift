public enum Edge: Int8, CaseIterable {
    case top, leading, bottom, trailing
}

public extension Edge {
    struct Set: OptionSet {
        public let rawValue: Int8
        public init(rawValue: Int8) {
            self.rawValue = rawValue
        }
    }
}

public extension Edge.Set {
    static let top: Edge.Set = .init(rawValue: [Edge.top].int8rawValue)
    static let leading: Edge.Set = .init(rawValue: [Edge.leading].int8rawValue)
    static let bottom: Edge.Set = .init(rawValue: [Edge.bottom].int8rawValue)
    static let vertical: Edge.Set = .init(rawValue: [Edge.top, .bottom].int8rawValue)
    static let trailing: Edge.Set = .init(rawValue: [Edge.trailing].int8rawValue)
    static let horizontal: Edge.Set = .init(rawValue: [Edge.leading, .trailing].int8rawValue)
    static let all: Edge.Set = .init(rawValue: Edge.allCases.int8rawValue)
}

// https://nshipster.com/optionset/
fileprivate extension Sequence where Element == Edge {
    var int8rawValue: Int8 {
        var rawValue: Int8 = 0
        for (index, element) in Element.allCases.enumerated() {
            if self.contains(element) {
                rawValue |= (1 << index)
            }
        }

        return rawValue
    }
}
