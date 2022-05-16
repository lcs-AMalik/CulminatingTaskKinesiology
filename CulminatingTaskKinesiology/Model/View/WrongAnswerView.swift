//
//  WrongAnswerView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct WrongAnswerView: View {
    
    // MARK: Stored properties
    
    // The list of favourite songs
    @Binding var favourites: [Quiz]
    @Binding var answeredQuestions: [AnsweredQuestion]
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            
            VStack {
                // ForEach question that was wrong
                ForEach(filterElements(list: answeredQuestions)) { answer in
                    HStack {
                        Text(answer.question.question)
                        
                        VStack {
                            Text("Answer: \(answer.question.answer)")
                            Text("Answered: \(answer.userAnswer)")
                        }
                        
                        DiagramView(image: answer.question.imageName,
                                    horizontalPadding: 50)
                        
                    }
                    .padding()
                    
                }
                
            }
            .navigationTitle("Wrong Answered!")
            .padding()
        }
    }
    // Function in order to filter out all the wrong answers
    func filterElements(list: [AnsweredQuestion]) -> [AnsweredQuestion] {
        var filteredList: [AnsweredQuestion] = []
        
        for element in list where !element.correct {
            filteredList.append(element)
        }
        // What we get in return
        return filteredList
    }
}
struct WrongAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WrongAnswerView(favourites: .constant([testQuiz]), answeredQuestions: .constant([]))
        }
        
    }
}
