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
            
            Button ("Press Me!"){
                let message1 = "Joshua is Cool!"
                let message2 = "Joshua loves Futbol!"

                
                message = (message == message1 ? message2 : message1)
                imgname = (imgname == "img1" ? "img0" : "img1")

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
