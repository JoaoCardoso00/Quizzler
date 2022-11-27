//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    

    let gameController = GameController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle == "True" ? true : false
        
        if userAnswer == currentQuestionAnswer && !isGameFinished {
            points += 1
        }
        
        gameController.goToNextQuestion()
        updateUI()
        
    }
    
    func updateUI() {
        print(questionNumber, questions.count)
        if !isGameFinished {
            currentQuestion = questions[questionNumber]
            currentQuestionPrompt = currentQuestion.Prompt
            currentQuestionAnswer = currentQuestion.Answer
            
            questionLabel.text = currentQuestionPrompt
        } else {
            questionLabel.text = "You scored \(points) out of \(questions.count)"
        }
        progressBar.progress = isGameFinished ? 1 : Float(questionNumber) / Float(questions.count)
    }
}

