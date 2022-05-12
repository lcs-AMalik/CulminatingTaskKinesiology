//
//  ContentView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // Is a game on?
    @State var gameOn: Bool = false
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Button(action: {
                gameOn.toggle()
            }, label: {
                Text("Let's play!")
                    .font(.title)
            })
                .buttonStyle(.bordered)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
