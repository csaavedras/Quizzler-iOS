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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        progressBar.progress = 0.0
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // Give the current title of button True or False
       
        
        if  quizBrain.checkAnswer(userAnswer) == true {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        
        if quizBrain.questionNumber + 1 < quizBrain.quiz.count {
            quizBrain.questionNumber += 1;
        } else {
            quizBrain.questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
        
    }
    
    @objc func updateUI(){
        //questionLabel.text = quiz[questionNumber].question
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].question
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(quizBrain.questionNumber + 1) / Float(quizBrain.quiz.count)
        
        
    }
    
}


