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
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imgname)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 10)
//                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.black)
            
            Spacer()
            
            Button ("Show Message"){
                let message1 = "You Are Awesome!"
                let message2 = "You are Great!"

                message = (message == message1 ? message2 : message1)
                imgname = "img\(imageNumber)"
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                    
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
