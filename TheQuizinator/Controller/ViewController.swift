//
//  ViewController.swift
//  TheQuizinator
//
//  Created by Aaron Haughton on 3/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import GameKit


class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let questionsPerRound = 10
    var questionsAsked = 0
    var correctQuestions = 0

    
    
 
    
    // MARK: - Outlets
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadGameStartSound()
        playGameStartSound()
        displayQuestion()
    }
    
 
    func displayQuestion() {
        Questions.init().randomizeIndexNumber()
        let questionDataPull = Questions.init().presentQuestionValues(index: indexOfSelectedQuestion)
        questionField.text = questionDataPull["Question"]
        option1.setTitle(questionDataPull["Option1"], for: .normal)
        option2.setTitle(questionDataPull["Option2"], for: .normal)
        option3.setTitle(questionDataPull["Option3"], for: .normal)
        option4.setTitle(questionDataPull["Option4"], for: .normal)
        playAgainButton.isHidden = true
        showOptionButtons()
    }
    
    
    
    func hideOptionButtons() {
        option1.isHidden = true
        option2.isHidden = true
        option3.isHidden = true
        option4.isHidden = true
        
    }
    
    func showOptionButtons() {
        option1.isHidden = false
        option2.isHidden = false
        option3.isHidden = false
        option4.isHidden = false
        
    }
    
    func displayScore() {
        // Hide the answer buttons
       hideOptionButtons()
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game Over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    func loadNextRound(delay seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    // MARK: - Actions
    
    
    @IBAction func checkTheAnswer(_ sender: UIButton) {
                // Increment the questions asked counter
                questionsAsked += 1
//                var shownAnswer = String()
                let answerDataPull = Questions.init().presentQuestionValues(index: indexOfSelectedQuestion)
                let correctAnswer = answerDataPull["Answer"]
        
                if (sender == option1 && correctAnswer == "1") {
                    correctQuestions += 1
                    questionField.text = "Correct!"
                    
                    
                } else if  (sender == option2 && correctAnswer == "2") {
                    correctQuestions += 1
                    questionField.text = "Correct!"
                    
                    
                } else if (sender == option3 && correctAnswer == "3") {
                    correctQuestions += 1
                    questionField.text = "Correct!"
                  
                } else if (sender == option4 && correctAnswer == "4") {
                    correctQuestions += 1
                    questionField.text = "Correct!"
                    
                } else {
                    questionField.text = "Sorry, wrong answer!"
                }
             
        
                loadNextRound(delay: 2)
        
        
        
    }
    

    
    @IBAction func playAgain(_ sender: UIButton) {
        // Show the answer buttons
        questionsAlreadyAsked = []
        hideOptionButtons()
        questionsAsked = 0
        correctQuestions = 0
        nextRound()
    }
    

}

