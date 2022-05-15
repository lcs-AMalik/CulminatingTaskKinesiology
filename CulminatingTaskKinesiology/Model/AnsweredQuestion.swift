//
//  AnsweredQuestion.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-15.
//

import Foundation
 
struct AnsweredQuestion: Identifiable {
    var id = UUID()
    var question: Quiz
    var correct: Bool
    var userAnswer: String
}
