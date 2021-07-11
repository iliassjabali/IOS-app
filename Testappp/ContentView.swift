//
//  ContentView.swift
//  Testappp
//
//  Created by iliass JABALI on 7/11/21.
//

import SwiftUI

struct ContentView: View {

    @State var p1card = "card5"
    @State var p2card = "card4"
    @State var p1Score =  0
    @State var p2Score = 0
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()

                HStack{
                    
                    Image(p1card)
                    Image(p2card)

                }
                Spacer()
                Button(action: {
                    let impactMed = UIImpactFeedbackGenerator(style: .heavy)
                    impactMed.impactOccurred()
                    let playerRand  = Int.random(in: 2...14)
                    let myRand = Int.random(in: 2...14)

                    p1card = "card" + String(playerRand)
                    p2card = "card" + String(myRand)
                    
                    if playerRand > myRand {
                        p1Score += 1
                    }
                    else if playerRand < myRand {
                        p2Score += 1
                    }
                    else  {
                        
                    }                    
                },label: {
                    Image("dealbutton")
                })
                
                HStack {
                    Spacer()

                    VStack{
                        Text("You")
                            .font(.largeTitle)
                            .padding(.bottom, 20.0)
                        Text(String(p1Score))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Not you")
                            .font(.largeTitle).padding(.bottom, 20.0)
                        Text(String(p2Score))
                            .font(.largeTitle)

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
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
