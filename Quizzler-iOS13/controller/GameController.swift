//
//  GameController.swift
//  Quizzler-iOS13
//
//  Created by joao cardoso on 27/11/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

var points: Int = 0
var isGameFinished: Bool = false

var questionNumber = 0

class GameController {
    func goToNextQuestion() {
        if questionNumber < questions.count - 1 {
            questionNumber += 1
        } else {
            finishGame()
        }
    }
    
    func finishGame() {
        isGameFinished = true
    }
}






