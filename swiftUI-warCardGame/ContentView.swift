//
//  ContentView.swift
//  swiftUI-warCardGame
//
//  Created by Brian Fajardo on 2020-04-27.
//  Copyright © 2020 Brian Fajardo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
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
                    Image("back")
                    Image("back")
                }
                
                Spacer()
     
                Button(
                    action: {
                        //TODO
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
