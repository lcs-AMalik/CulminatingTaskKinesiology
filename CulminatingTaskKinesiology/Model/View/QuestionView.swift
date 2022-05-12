//
//  QuestionView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct QuestionView: View {
    
    // MARK: Stored properties
    
    // The list of favourite songs
    @Binding var favourites: [Quiz]
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                DiagramView(image: "skeleton",
                            horizontalPadding: 50)
                    .padding()
                
                
                Text("What is the bone in the upper arm?")
                    .padding()
                
                HStack {
                    
                    // Input
                    TextField("",
                              text: .constant(""),
                              prompt: Text("Type answer..."))
                        .padding()
                    
                }
                
                HStack {
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.green)
                        .padding()
                    // Only show this when the answer given is correct
                    //            CONDITION          true  false
                    //    .opacity(answerCorrect == true ? 1.0 : 0.0)
                    
                    
                    Button(action: {
                        ""
                    }, label: {
                        Text("Submit")
                    })
                        .buttonStyle(.bordered)
                    
                    
                    Image(systemName: "x.square")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                        .padding()
                    // Show this when both of the following situations are true:
                    // 1. Answer has been checked.
                    // 2. Answer was not correct.
                    // Necessary since if we show this only when an answer is incorrect,
                    // with no other conditions, it would show as soon as a new
                    // question is generated.
                    //                 CONDITION1  AND  CONDITION2             true  false
                    //    .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
                }
                //.padding(.horizontal, 75)
                
            }
            .navigationTitle("Question")
            .padding()
        }
    }
    
}
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            QuestionView(favourites: .constant([testQuiz]))
        }
        
    }
}
