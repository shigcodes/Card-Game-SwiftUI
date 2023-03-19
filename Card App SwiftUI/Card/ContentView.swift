//
//  ContentView.swift
//  Card
//
//  Created by Shigrid Ann Docil on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card13"
    @State private var cpuCard = "card11"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
    
        ZStack {
            Image ("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
              Image ("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image (playerCard)
                    Spacer()
                    Image (cpuCard)
                    Spacer()
                    
                
                }
                Spacer()
                
                Button(action: {
                    
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    // playerScore += 1
                    // cpuScore += 1
                }, label: {
                    Image ("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text ("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10.0)
                        Text (String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    Spacer()
                        VStack {
                            Text ("CPU")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.bottom, 10.0)
                            Text (String(cpuScore))
                                .font(.largeTitle)
                                .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}

