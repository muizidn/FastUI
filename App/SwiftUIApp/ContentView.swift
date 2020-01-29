//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Muis on 29/01/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Toggle.init("Something", isOn: .init(get: { false }, set: {_ in}))
            Picker.init("Hello", selection: .init(get: { false }, set: {_ in}), content: { Text("Yes") })
            DatePicker.init("your day", selection: .init(get: { Date() }, set: {_ in}))
            Slider.init(value: .init(get: { 0.50 }, set: {_ in}))
            Stepper.init("Youtube", value: .init(get: { 2 }, set: {_ in}))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
