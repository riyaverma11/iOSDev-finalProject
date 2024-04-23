//
//  TriviaInfo.swift
//  ios101-project6-tumblr
//
//  Created by Riya Verma on 4/22/24.
//

import Foundation
import UIKit

struct TriviaInformation {
    let questionNum: QuestionNumber
    let question: String
    let answer1: String
    let answer2: String
    let answer3: String
    let answer4: String
}

enum QuestionNumber {
    case question1
    case question2
    case question3
    
    var description: String {
        switch self {
        case .question1:
            return "Question 1/3"
            
        case .question2:
            return "Question 2/3"
            
        case .question3:
            return "Question 3/3"
        }
    }
}
