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
    case question4
    case question5
    case question6
    case question7
    case question8
    case question9
    case question10
    case question11
    case question12
    case question13
    
    var description: String {
        switch self {
        case .question1:
            return "Question 1/13"
        case .question2:
            return "Question 2/13"
        case .question3:
            return "Question 3/13"
        case .question4:
            return "Question 4/13"
        case .question5:
            return "Question 5/13"
        case .question6:
            return "Question 6/13"
        case .question7:
            return "Question 7/13"
        case .question8:
            return "Question 8/13"
        case .question9:
            return "Question 9/13"
        case .question10:
            return "Question 10/13"
        case .question11:
            return "Question 11/13"
        case .question12:
            return "Question 12/13"
        case .question13:
            return "Question 13/13"
        }
    }
}
