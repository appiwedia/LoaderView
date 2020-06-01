//
//  ContentView.swift
//  LoaderView
//
//  Created by Mickael Mas on 01/06/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    var body: some View {
        VStack {
            LoaderView(animate: $animate)
            Button(action: {
                self.animate.toggle()
            }) {
                Text(animate ? "Stop": "Start")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
