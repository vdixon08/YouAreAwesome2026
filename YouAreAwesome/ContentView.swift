//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Van Dixon on 9/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imgname = ""
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imgname)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            Button ("Press Me!"){
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let imageString1 = "sun.max.fill"
                let imageString2 = "hand.thumbsup"
                
                if message == message1 {
                    message = message2
                    imgname = imageString2
                } else {
                    message = message1
                    imgname = imageString1
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
