//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Camilo Saavedra Salas on 05-03-23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
