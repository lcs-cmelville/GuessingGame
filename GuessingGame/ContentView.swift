//
//  ContentView.swift
//  GuessingGame
//
//  Created by Claire Melville on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Slider(value: .constant(61.0),
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
            
            Text("61")
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
