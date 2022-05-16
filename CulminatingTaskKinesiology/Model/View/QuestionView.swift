//
//  QuestionView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct QuestionView: View {
    
    // MARK: Stored properties
    
    // The list of favourite Quiz
    @Binding var favourites: [Quiz]
    @Binding var answeredQuestions: [AnsweredQuestion]
    
    // View Modifiers
    // we set question to equal listOfQuiz so we use question instead of listOfQuiz
    @State var questions = listOfQuiz
    // Each question is an index
    @State var index = 0
    // this the the users anwer
    @State var userAnswer = ""
    // controls when pressed button what happenes next.
    @State var submitted = false
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                // Contains the image, which is also taken from the quiz file.
                DiagramView(image: questions[index].imageName,
                            horizontalPadding: 50)
                    .padding()
                
                // Provides the question from the list
                // index is used to identify the line of question
                // Each index is a question in thr Quiz file.
                Text(questions[index].question)
                    .padding()
                
                HStack {
                    // Contains the users input
                    // Input
                    TextField("Answer here...", text: $userAnswer)
                        .disabled(submitted)
                    
                }
                
                HStack {
                    // Controls the "check" you get when you get the question right. It checks for of the users answer is == to the questions then provides us with a green check
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor((userAnswer.lowercased() != questions[index].answer.lowercased() || submitted == false) ? .gray : .green)
                        .padding()
                    
                    // Start of button
                    // The code basically is in works with the check mark and the "X"
                    // Button also links with the list
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
                    
                    // Controls the "X" you get when you get the question wrong. It checks for of the users answer is == to the questions then provides us with a red x
                    
                    // In code || means "or"
                    Image(systemName: "x.square")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor((userAnswer.lowercased() == questions[index].answer.lowercased() || submitted == false) ? .gray : .red)
                        .padding()
                }
            }
            // Codes Title
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
