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
    @Binding var answeredQuestions: [AnsweredQuestion]
    
    // View Modifiers
    @State var questions = listOfQuiz
    
    @State var index = 0
    
    @State var userAnswer = ""
    
    @State var submitted = false
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                DiagramView(image: questions[index].imageName,
                            horizontalPadding: 50)
                    .padding()
                
                
                Text(questions[index].question)
                    .padding()
                
                HStack {
                    
                    // Input
                    TextField("Answer here...", text: $userAnswer)
                        .disabled(submitted)
                    
                }
                
                HStack {
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor((userAnswer.lowercased() != questions[index].answer.lowercased() || submitted == false) ? .gray : .green)
                        .padding()
                    // Only show this when the answer given is correct
                    //            CONDITION          true  false
                    //    .opacity(answerCorrect == true ? 1.0 : 0.0)
                    
                    
                    Button(action: {
                        if submitted == false {
                            
                            submitted.toggle()
                            
                            var correct = false
                            
                            if userAnswer == questions[index].answer {
                                correct = true
                            }
                            
                            let newAnswer = AnsweredQuestion(question: questions[index], correct: correct, userAnswer: userAnswer)
                            
                            answeredQuestions.append(newAnswer)
                            
                        } else {
                            index = (index == questions.count - 1) ? 0 : index + 1
                            userAnswer = ""
                            submitted.toggle()
                        }
                    }, label: {
                        Text((submitted == false) ? "Submit" : "Next")
                    })
                        .disabled(userAnswer.isEmpty)
                        .buttonStyle(.bordered)
                    
                    
                    Image(systemName: "x.square")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor((userAnswer.lowercased() == questions[index].answer.lowercased() || submitted == false) ? .gray : .red)
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
            QuestionView(favourites: .constant([testQuiz]), answeredQuestions: .constant([]))
        }
        
    }
}
