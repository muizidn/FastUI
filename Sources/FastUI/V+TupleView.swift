
typealias TupleView = [_SomeView]

extension TupleView {
    init(_ views: [SomeView]) {
        self = views.map({ _SomeView(s: $0)})
    }
}

struct _SomeView: SomeView {
    let s: SomeView
    var body: SomeView { s }
}
