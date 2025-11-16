//
//  ContentView.swift
//  MusicApp
//
//  Created by Sowaiba Umar on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Music App")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("Welcome, Sowaiba!")
                .font(.headline)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    ContentView()
}
