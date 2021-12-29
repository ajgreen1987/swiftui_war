//
//  ContentView.swift
//  CardGame
//
//  Created by AJ Green on 12/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playersCard = "card5"
    @State private var playersScore = 0
    @State private var pcsCard = "card9"
    @State private var pcsScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                
                HStack{
                    Spacer()
                    Image(playersCard)
                    Spacer()
                    Image(pcsCard)
                    Spacer()
                }
                
                Button(action: deal,
                       label:{ Image("dealbutton")})
                
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                                   .font(.headline)
                                   .foregroundColor(Color.white)
                                   .padding(.bottom, 10.0)
                                Text(String(playersScore))
                                   .font(.largeTitle)
                                   .foregroundColor(Color.white)

                    }
                    Spacer()
                    VStack{
                        Text("PC")
                                   .font(.headline)
                                   .foregroundColor(Color.white)
                                   .padding(.bottom, 10.0)
                                Text(String(pcsScore))
                                   .font(.largeTitle)
                                   .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    
    func deal() -> Void {
        
        let cardPrefix = "card"
        
        // Generate a random number for the player
        let playersRandomNumber = Int.random(in: 2...14)
        
        // Update the player card
        playersCard = cardPrefix + String(playersRandomNumber)
        
        
        // Generate a random number for the pc
        let pcsRandomNumber = Int.random(in: 2...14)
        
        // Update pc card
        pcsCard = cardPrefix + String(pcsRandomNumber)
        
        
        // Compare and update Player or PC Score
        if(playersRandomNumber > pcsRandomNumber){
            playersScore += 1
        }else{
            pcsScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
