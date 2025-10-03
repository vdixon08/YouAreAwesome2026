//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Van Dixon on 9/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.red)
            Button ("Click Me"){
                message = "Awesome!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
