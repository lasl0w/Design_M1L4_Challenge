//
//  ContentView.swift
//  Design_M1L4_Challenge
//
//  Created by tom montgomery on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    
    let transparent = Color.init(.sRGB, red:0, green: 0, blue: 0, opacity: 0)
    
    var body: some View {

        // my initial try using LinearGradient .topLeading to .bottomTrailing wasn't half bad
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .fill(RadialGradient( gradient: Gradient(colors: [Color.black, Color.blue]), center: UnitPoint(x: 0.8, y: 0.7), startRadius: 1, endRadius: 350))
                
                Circle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [Color.white, transparent]),
                        center: UnitPoint(x: 0.1, y: 0.3),
                        startRadius: 1,
                        endRadius: 250))
            }
            .shadow(color: .white, radius: 20, x: -2, y: -2)
            .frame(width: 325)

              Circle()
                .fill(Color.yellow)
            //push it 500 pixels up.  could be positive from bottom
                .padding(.top, -450)
            // pushing it left also makes it smaller
                .padding(.trailing, 200)
                .blur(radius: 80)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
