//
//  StatisticView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct StatisticView: View {
    
    // MARK: Stored properties
    
    // The list of favourite songs
    @Binding var favourites: [Quiz]
    @Binding var answeredQuestions: [AnsweredQuestion]
    
    // MARK: Computed properties
    var body: some View {
        // correctAnswers is answeredQuestion form the list on Quiz
        let correctAnswers = correctAnswers(list: answeredQuestions)
        NavigationView {
            
            VStack {
                
                HStack {
                    // Equation format
                    Text("Currently:  \(correctAnswers)/\(answeredQuestions.count)")
                        .padding()
                    // Percentage format
                    Text("\(calculatePercentage())%")
                        .padding()
                }
            }
            .navigationTitle("Statistics!")
            .padding()
            
        }
    }
        // Added a function that tkaes correctAnswers and turns it to a INT which is correctAnswerCount
    func correctAnswers(list: [AnsweredQuestion]) -> Int {
        var correctAnswerCount = 0
        
        for element in list {
            if element.correct {
                correctAnswerCount += 1
            }
        }
        // What we get in return
        return correctAnswerCount
    }
    // Added a function to calculate percantage
    func calculatePercentage() -> Int {
        if answeredQuestions.isEmpty {
            return 0
        }
        // we set correct to be answered questions in list
        let correct = correctAnswers(list: answeredQuestions)
        // Formula to find ratio
        let ratio = Double(correct)/Double(answeredQuestions.count)
        // This is the final equation step to find % of ratio
        let percentage = ratio*100
        
        return Int(percentage)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StatisticView(favourites: .constant([testQuiz]), answeredQuestions: .constant([]))
        }
        
    }
}
