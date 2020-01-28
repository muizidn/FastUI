//
//  ViewController.swift
//  ExampleApp
//
//  Created by Muis on 20/01/20.
//

import FastUI

class ViewController: UIViewController {
    var body: View {
        VStack {
            HStack {
                Color.red
                    ._configure({
                        $0._flex_width(50%)
                        $0._flex_height(100%)
                    })
                EmptyView()
                    ._flex_width(10)
                Color.yellow
                    ._configure({
                        $0._flex_width(50%)
                        $0._flex_height(100%)
                    })
            }
            ._configure({
                $0.foregroundColor(.black)
                $0._flex_height(100)
            })

            EmptyView()
                ._flex_height(10)
                .foregroundColor(.red)
            
            EmptyView()
                ._flex_height(10)
            
            Text("Hello World")
            
            TextField("Say Your Name World!")
            
            SecureTextField()
            
            Button("Click Me!") {
                print("I am clicked")
            }
            
            EmptyView()
                ._flex_height(10)
            
            Button.init(action: {
                print("I am clicked again")
            }) { () -> Text in
                Text("Hello World")
            }
            
            HStack {
                Color.red
                    ._configure({
                        $0._flex_width(50%)
                        $0._flex_height(100%)
                    })
                Color.blue
                    ._configure({
                        $0._flex_width(50%)
                        $0._flex_height(100%)
                    })
            }
            ._configure({
                $0.foregroundColor(.green)
                $0._flex_height(100)
            })
        }
        ._configure({
            $0.foregroundColor(.cyan)
        })
    }
    
    override func loadView() {
        super.loadView()
        view = body.view(Self.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(view.frame)
    }
}
