//
//  ContentView.swift
//  GuessingGame
//
//  Created by Claire Melville on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    //The current guess of the user
   @State var currentGuess: Double = 50.0
    
    //MARK: Computed properties
    
    var body: some View {
        
        VStack {
            
            Slider(value: $currentGuess,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                        Text("Guess")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            
            Text("\(String(format: "%.0f", currentGuess))")
                .font(.largeTitle)
                .bold()
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Submit Guess")
            })
            .buttonStyle(.bordered)
            
            Spacer()
            
        }
        .navigationTitle("Guessing Game")
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
