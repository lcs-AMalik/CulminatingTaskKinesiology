//
//  WrongAnswerView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct WrongAnswerView: View {
    
    // MARK: Stored properties
    
    
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            HStack {
                Text("What is this bone?")
                VStack {
                Text("Answer: Femur")
                Text("Answered: Tibia")
                }
                
                DiagramView(image: "skeleton",
                            horizontalPadding: 50)
                
            }
            .padding()
            
            HStack {
                Text("What is this bone?")
                VStack {
                Text("Answer: Femur")
                Text("Answered: Tibia")
                }
                
                DiagramView(image: "skeleton",
                            horizontalPadding: 50)
            }
            .padding()
        }
        .navigationTitle("Wrong Answered!")
        .padding()
    }
}

struct WrongAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WrongAnswerView()
        }
        
    }
}
