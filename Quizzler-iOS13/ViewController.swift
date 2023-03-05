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
    
    let quiz = [
        ["JavaScript is a compiled language.","false"],
        ["JavaScript is only used for client-side scripting.", "false"],
        ["JavaScript is a statically typed language.", "false"],
        ["JavaScript is an object-oriented language.", "true"],
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle // Give the current title of button True or False
        let actualAnswer = quiz[questionNumber][1].capitalized   // Give the answer from array quiz and conver string to capitalized
        
            if userAnswer! == actualAnswer{
                print("Rigth!")
            } else {
                 print("Wrong!")
            }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1;
        } else {
            questionNumber = 0
        }
            
  
        updateUI()
       
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
        
    }
    
}

