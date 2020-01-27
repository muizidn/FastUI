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
                Color.red
                    .configure({
                        $0.flex_width(50%)
                        $0.flex_height(100%)
                    })
                Color.blue
                    .configure({
                        $0.flex_width(50%)
                        $0.flex_height(100%)
                    })
            }
            .configure({
                $0.foregroundColor(.black)
                $0.flex_height(100)
            })
            
            VStack()
                .flex_height(10)
            
            HStack {
                Color.red
                    .configure({
                        $0.flex_width(50%)
                        $0.flex_height(100%)
                    })
                Color.blue
                    .configure({
                        $0.flex_width(50%)
                        $0.flex_height(100%)
                    })
            }
            .configure({
                $0.foregroundColor(.green)
                $0.flex_height(100)
            })
        }
        .configure({
            $0.foregroundColor(.cyan)
        })
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
