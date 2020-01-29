//
//  ContentView.swift
//  FastUIApp
//
//  Created by Muis on 29/01/20.
//

import Foundation
import FastUI


struct ContentView: View {
    var body: View {
        VStack {
            Toggle()
            Picker()
            Slider()
            DatePicker()
            Stepper()
        }
        .foregroundColor(.red)
    }
}
