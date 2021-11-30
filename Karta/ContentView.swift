//
//  ContentView.swift
//  Karta
//
//  Created by Mirdin Sadykov on 8/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack(){
            Image("background")
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)

                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                }, label: {
                    
                    Image("dealbutton")
                })
                Spacer()
                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.title2)
                        .foregroundColor(Color.white)
                        
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 20.0)
                        
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.title)
                        .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.vertical)
                    }
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
