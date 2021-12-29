//
//  ContentView.swift
//  CardGame
//
//  Created by AJ Green on 12/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Image("dealbutton")
                
                HStack{
                    Spacer()
                    VStack{
                    Text("Player")
                    Text("0")
                    }
                    Spacer()
                    VStack{
                    Text("CPU")
                    Text("0")
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
