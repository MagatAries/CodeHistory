//
//  Question.swift
//  Code History
//
//  Created by Aries Magat on 5/5/22.
//

import Foundation

struct Question{
    let questionText : String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    init(questionText: String, possibleAnswers:[String], correctAnswerIndex: Int){
        self.questionText = questionText
        self.possibleAnswers = possibleAnswers
        self.correctAnswerIndex = correctAnswerIndex
    }
}
