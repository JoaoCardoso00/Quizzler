//
//  Quizz.swift
//  Quizzler-iOS13
//
//  Created by joao cardoso on 27/11/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

let questions: [Question] = [
    (Prompt: "Four + Two is equal to Six.", Answer: true),
    (Prompt: "Five - Three is greater than One", Answer: true),
    (Prompt: "Three + Eight is less than Ten", Answer: false)
]

var currentQuestion: Question = (Prompt: "", Answer: false)
var currentQuestionPrompt: String = ""
var currentQuestionAnswer: Bool = false
