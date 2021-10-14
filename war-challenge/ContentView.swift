//
//  ContentView.swift
//  war-challenge
//
//  Created by 神山賢太郎 on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCord = "card2"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCord)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                //Image("dealbutton")
                Button(action: {
                    
                    // update card
                    let playerRand = Int.random(in:2...14)
                    let cpuRand = Int.random(in:2...14)
                    
                    playerCord = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("cpu")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
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
