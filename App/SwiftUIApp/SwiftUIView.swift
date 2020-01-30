//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Muis on 29/01/20.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Button.init("Clickme", action: {})
            Image.init(systemName: "star.fill")
        }
        .navigationBarTitle("Youtube")
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
