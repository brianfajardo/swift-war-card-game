//
//  ContentView.swift
//  swiftUI-warCardGame
//
//  Created by Brian Fajardo on 2020-04-27.
//  Copyright © 2020 Brian Fajardo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Card state
    @State private var playerCard: Int = -1
    @State private var cpuCard: Int = -1
    
    // Score state
    @State private var playerScore: Int = 0
    @State private var cpuScore: Int = 0
    
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
                    Image(self.playerCard == -1 ? "back" : "card\(self.playerCard)")
                    Image(self.cpuCard == -1 ? "back" : "card\(self.cpuCard)")
                }
                
                Spacer()
     
                Button(
                    action: {
                        self.playerCard = Int.random(in: 2...14)
                        self.cpuCard = Int.random(in: 2...14)
                        
                        if self.playerCard > self.cpuCard {
                            self.playerScore += 1
                        } else if self.cpuCard > self.playerCard {
                            self.cpuScore += 1
                        }
                    },
                    label: {
                        Image("dealButton").renderingMode(.original)
                    }
                )
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.body)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.body)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
                    
                    Spacer()
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
