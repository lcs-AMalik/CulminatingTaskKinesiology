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
        
        let correctAnswers = correctAnswers(list: answeredQuestions)
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    Text("This week:  \(correctAnswers)/\(answeredQuestions.count)")
                        .padding()
                    
                    Text("\(calculatePercentage())%")
                        .padding()
                }
            }
            .navigationTitle("Statistics!")
            .padding()
            
        }
    }
    
    func correctAnswers(list: [AnsweredQuestion]) -> Int {
        var correctAnswerCount = 0
        
        for element in list {
            if element.correct {
                correctAnswerCount += 1
            }
        }
        
        return correctAnswerCount
    }
    
    func calculatePercentage() -> Int {
        if answeredQuestions.isEmpty {
            return 0
        }
        
        let correct = correctAnswers(list: answeredQuestions)
        
        let ratio = Double(correct)/Double(answeredQuestions.count)
        
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
