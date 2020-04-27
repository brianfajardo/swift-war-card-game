//
//  ContentView.swift
//  swiftUI-warCardGame
//
//  Created by Brian Fajardo on 2020-04-27.
//  Copyright © 2020 Brian Fajardo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randomN1 = 2
    @State private var randomN2 = 2
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Image("card" + String(randomN1))
                    Image("card" + String(randomN2))
                }
                
                Spacer()
     
                Button(
                    action: {
                        self.randomN1 = Int.random(in: 2...14)
                        self.randomN2 = Int.random(in: 2...14)
                    },
                    label: {
                        Image("dealButton").renderingMode(.original)
                    }
                )
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Player")
                        Text("0")
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                        Text("0")
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
