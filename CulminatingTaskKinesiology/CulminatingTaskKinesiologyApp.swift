//
//  CulminatingTaskKinesiologyApp.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-10.
//

import SwiftUI

@main
struct CulminatingTaskKinesiologyApp: App {
    
    // MARK: Stored properties
    
    // Source of truth for the list of favourite songs
    @State var favourites: [Quiz] = []
    @State var answeredQuestions: [AnsweredQuestion] = []
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                QuestionView(favourites: $favourites, answeredQuestions: $answeredQuestions)
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Question")
                }
                
                WrongAnswerView(favourites: $favourites, answeredQuestions: $answeredQuestions)
                .tabItem {
                    Image(systemName: "x.circle")
                    Text("Wrong")
                }
                
                StatisticView(favourites: $favourites, answeredQuestions: $answeredQuestions)
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Statistics")
                }
                
            }
        }
    }
}
