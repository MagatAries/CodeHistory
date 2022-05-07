//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Aries Magat on 5/7/22.
//

import Foundation

struct ScoreViewModel{
    let correctGuesses:Int
    let incorrectGuesses:Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
