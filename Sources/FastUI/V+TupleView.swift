
typealias TupleView = [_View]

extension TupleView {
    init(_ views: [View]) {
        self = views.map({ _View(s: $0)})
    }
}

struct _View: View {
    let s: View
    var body: View { s }
}

extension _View: SelfConfigure {
    func configureInParent(_ parent: View) {
        (s as? SelfConfigure)?
            .configureInParent(parent)
    }
}
