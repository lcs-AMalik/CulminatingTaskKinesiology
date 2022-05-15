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
    let imageName: String
    
}

let testQuiz = Quiz(answer: "Femur", question: "What is the bone in your upper leg", imageName: "Femur")

let listOfQuiz = [

    Quiz(answer: "Femur", question: "What is the bone in your upper leg?", imageName: "Femur")
    ,
    Quiz(answer: "Tibia", question: "What is the bone in the front of your lower leg?", imageName: "Tibia")
    ,
    Quiz(answer: "Fibula", question: "What is the bone in the back of your lower leg?", imageName: "Fibula")
    ,
    Quiz(answer: "Radius", question: "What is the bone in your lower arm that is bigger at the wrist?", imageName: "Radius")
    ,
    Quiz(answer: "Ulna", question: "What is the bone in your lower arm that is bigger at the elbow?", imageName: "Ulna")
    ,
    Quiz(answer: "Humerus", question: "What is the bone in your upper arm?", imageName: "Humerus")
    ,
    Quiz(answer: "Carpols", question: "What are the bones in your wrist?", imageName: "Carpols")
    ,
    Quiz(answer: "Tarsals", question: "What are the bones that make up your ankle?", imageName: "Tarsals")
    ,
    Quiz(answer: "Phalanges", question: "What are the bones that are in both your toes and fingers?", imageName: "Phalanges")
    
]

