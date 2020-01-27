//
//  ViewController.swift
//  ExampleApp
//
//  Created by Muis on 20/01/20.
//

import FastUI

class ViewController: UIViewController {
    var body: SomeView {
        VStack {
            HStack {
                HStack()
                    .flex({ $0
                        .width(50%) })
                    .foregroundColor(.brown)
                HStack()
                    .flex({ $0
                        .width(50%) })
                    .foregroundColor(.green)
            }
            .flex({ $0.height(100) })
            .foregroundColor(.red)
            HStack {
                VStack()
            }
            .flex({ $0.height(100) })
            .foregroundColor(.blue)
            HStack {
                Color.red
                    .flex({ flex in
                        flex.width(100%)
                            .height(100%) })
                    .foregroundColor(.brown)
            }
            .flex({ $0.height(100) })
        }
        .foregroundColor(.cyan)
    }
    
    override func loadView() {
        super.loadView()
        view = body.view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(view.frame)
    }
}
