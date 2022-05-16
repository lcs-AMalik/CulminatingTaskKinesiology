//
//  AnsweredQuestion.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-15.
//

import Foundation

    // To keep track of user answers and associate them with the right question

// We use identifiable to be able to make the swiftUI view recognize the ForEach structure
 
struct AnsweredQuestion: Identifiable {
    var id = UUID()
    var question: Quiz
    var correct: Bool
    var userAnswer: String
}
