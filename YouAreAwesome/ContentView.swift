//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Van Dixon on 9/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.purple)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.green)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
