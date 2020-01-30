//
//  Dashboard.swift
//  SwiftUIApp
//
//  Created by Muis on 30/01/20.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: FastUIView()) {
                    Text("FastUI")
                }
                NavigationLink(destination: SwiftUIView()) {
                    Text("SwiftUI")
                }
            }
            .navigationBarTitle("Dashboard")
        }
    }
}
