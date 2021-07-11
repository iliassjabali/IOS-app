//
//  ContentView.swift
//  Testappp
//
//  Created by iliass JABALI on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()

                HStack{
                    
                    Image("card2")
                    Image("card3")

                }
                Spacer()
                Image("dealbutton")
                HStack {
                    Spacer()

                    VStack{
                        Text("You")
                            .font(.largeTitle)
                            .padding(.bottom, 20.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Not you")
                            .font(.largeTitle).padding(.bottom, 20.0)
                        Text("0")
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
