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
                    .flex_width(50%)
                    .foregroundColor(.brown)
                HStack()
                    .flex_width(50%)
                    .foregroundColor(.green)
            }
            .foregroundColor(.red)
            .flex_height(100)
            HStack {
                VStack()
            }
            .foregroundColor(.blue)
            .flex_height(100)
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
