//
//  ContentView.swift
//  Layers
//
//  Created by ramil on 14.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("The Layers")
                .font(.largeTitle)
            
            Text("The Basics")
                .foregroundColor(.gray)
            
            Text("With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Image("yosemite") // Show an image from Assets.xcassets
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .opacity(0.7) // Make image only 70% solid
                .background(Color.red.opacity(0.3)) // Layer behind image
                .background(Color.yellow.opacity(0.3)) // Layer behind red
                .background(Color.blue.opacity(0.3)) // Layer behind yellow
                .overlay(Text("The Yosemite")
                    .foregroundColor(Color.white)) // Layer on top image
            
            Image("Layers")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
        }.font(.title) // Apply this font style to all text in this container view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
