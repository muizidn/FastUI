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
//            HStack {
//                HStack()
//            }
//            .frame(height: 30)
//            .foregroundColor(.blue)

//            HStack {
//                
//            }
//            HStack {
//                VStack()
//                VStack()
//            }
//            .frame(height: 30)
//            .foregroundColor(.red)
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
