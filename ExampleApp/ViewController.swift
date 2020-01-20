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
//            GeometryReader { geometry in
//                HStack {
//                    VStack()
//                    VStack()
//                }
//            }
//            .frame(height: 30)
//            .color(.blue)
            
            HStack {
                HStack()
            }
            .frame(height: 30)
            .color(.blue)
            
            HStack {
                VStack()
                VStack()
            }
            .frame(height: 30)
            .color(.red)
        }
        .color(.cyan)
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

