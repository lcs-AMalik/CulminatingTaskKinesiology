//
//  Quiz.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import Foundation

struct Quiz {
    
    // MARK: Stored properties
    let answer: String
    let question: String
    
}

let testQuiz = Quiz(answer: "Femur", question: "What is the bone in your upper leg")

let listOfQuiz = [

    Quiz(answer: "Femur", question: "What is the bone in your upper leg?")
    ,
    Quiz(answer: "Tibia", question: "What is the bone in the front of your lower leg?")
    ,
    Quiz(answer: "Fibula", question: "What is the bone in the back of your lower leg?")
    ,
    Quiz(answer: "Radius", question: "What is the bone in your lower arm that is bigger at the wrist?")
    ,
    Quiz(answer: "Ulna", question: "What is the bone in your lower arm that is bigger at the elbow?")
    ,
    Quiz(answer: "Humerus", question: "What is the bone in your upper arm?")
    ,
    Quiz(answer: "Carpols", question: "What are the bones in your wrist?")
    ,
    Quiz(answer: "Tarsals", question: "What are the bones that make up your ankle?")
    ,
    Quiz(answer: "Phalanges", question: "What are the bones that are in both your toes and fingers?")
    
]

