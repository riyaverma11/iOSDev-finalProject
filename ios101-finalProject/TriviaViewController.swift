//
//  TriviaViewController.swift
//  ios101-project6-tumblr
//
//  Created by Riya Verma on 4/22/24.
//

import UIKit

class TriviaViewController: UIViewController {
    
    
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var fourthAnswerButton: UIButton!
    
    @IBAction func didPressAnswer1(_ sender: UIButton) {
        selectedTriviaQuestion = min(trivia.count - 1, selectedTriviaQuestion + 1)
        configure(with: trivia[selectedTriviaQuestion])
    }
    

    @IBAction func didPressAnswer2(_ sender: UIButton) {
        selectedTriviaQuestion = min(trivia.count - 1, selectedTriviaQuestion + 1)
        configure(with: trivia[selectedTriviaQuestion])
    }
    
    
    @IBAction func didPressAnswer3(_ sender: UIButton) {
        selectedTriviaQuestion = min(trivia.count - 1, selectedTriviaQuestion + 1)
        configure(with: trivia[selectedTriviaQuestion])
    }
    
    
    @IBAction func didPressAnswer4(_ sender: UIButton) {
        selectedTriviaQuestion = min(trivia.count - 1, selectedTriviaQuestion + 1)
        configure(with: trivia[selectedTriviaQuestion])
    }
    
    
    
    private var trivia = [TriviaInformation]()
    private var selectedTriviaQuestion = 0 //tracks which question is being shown, defaults to 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trivia = createMockData()
        configure(with: trivia[selectedTriviaQuestion])
        //print("this is a question number: ", questionNumberLabel.text)
    }
    
    private func createMockData() -> [TriviaInformation] {
        let mockData1 = TriviaInformation(questionNum: .question1,
                                          question: "How many pre-sale tickets did Taylor sell on opening day of the sale?",
                                          answer1: "1.3 million",
                                          answer2: "1.8 million",
                                          answer3: "2.2 million",
                                          answer4: "2.4 million")
        let mockData2 = TriviaInformation(questionNum: .question2,
                                          question: "Where was the first night of tour?",
                                          answer1: "Glendale",
                                          answer2: "Houston",
                                          answer3: "Atlanta",
                                          answer4: "Chicago")
        let mockData3 = TriviaInformation(questionNum: .question3,
                                          question: "How many outfit changes does Taylor have throughout the concert?",
                                          answer1: "16",
                                          answer2: "22",
                                          answer3: "10",
                                          answer4: "13")
        let mockData4 = TriviaInformation(questionNum: .question4,
                                          question: "How long is the concert?",
                                          answer1: "2 hours",
                                          answer2: "3 hours",
                                          answer3: "3.5 hours",
                                          answer4: "4 hours")
        let mockData5 = TriviaInformation(questionNum: .question5,
                                          question: "In what city did fireworks go off during 'Enchanted'?",
                                          answer1: "Santa Clara",
                                          answer2: "Seattle",
                                          answer3: "Kansas City",
                                          answer4: "Las Vegas")
        let mockData6 = TriviaInformation(questionNum: .question6,
                                          question: "When was the first day of tour?",
                                          answer1: "March 17, 2023",
                                          answer2: "March 13, 2023",
                                          answer3: "April 19, 2023",
                                          answer4: "April 5, 2023")
        let mockData7 = TriviaInformation(questionNum: .question7,
                                          question: "What was the first surprise song to be repeated on tour?",
                                          answer1: "Maroon",
                                          answer2: "KOMH",
                                          answer3: "YOYOK",
                                          answer4: "Clean")
        let mockData8 = TriviaInformation(questionNum: .question8,
                                          question: "What era does Taylor end the show with?",
                                          answer1: "Fearless",
                                          answer2: "Debut",
                                          answer3: "Midnights",
                                          answer4: "Red")
        let mockData9 = TriviaInformation(questionNum: .question9,
                                          question: "Which show did Taylor announce Speak Now(TV)?",
                                          answer1: "Nashville",
                                          answer2: "Tampa",
                                          answer3: "Detroit",
                                          answer4: "Los Angeles")
        let mockData10 = TriviaInformation(questionNum: .question10,
                                          question: "How many shows were on the first leg of the U.S. tour?",
                                          answer1: "44",
                                          answer2: "53",
                                          answer3: "58",
                                          answer4: "49")
        let mockData11 = TriviaInformation(questionNum: .question11,
                                          question: "What's the last American city Taylor is playing at?",
                                          answer1: "Miami",
                                          answer2: "New Orleans",
                                          answer3: "Indianapolis",
                                          answer4: "Nashville")
        let mockData12 = TriviaInformation(questionNum: .question12,
                                          question: "Which era has only 1 outfit?",
                                          answer1: "reputation",
                                          answer2: "Lover",
                                          answer3: "evermore",
                                          answer4: "Speak Now")
        let mockData13 = TriviaInformation(questionNum: .question13,
                                          question: "How many eras does Taylor regularly perform on tour",
                                          answer1: "9",
                                          answer2: "10",
                                          answer3: "11",
                                          answer4: "12")
        return [mockData1, mockData2, mockData3, mockData4, mockData5, mockData6, mockData7, mockData8, mockData9, mockData10, mockData11, mockData12, mockData13]
    }
    
    private func configure(with trivia: TriviaInformation) {
        questionNumberLabel.text = trivia.questionNum.description
        questionLabel.text = trivia.question
        firstAnswerButton.setTitle(trivia.answer1, for: .normal)
        secondAnswerButton.setTitle(trivia.answer2, for: .normal)
        thirdAnswerButton.setTitle(trivia.answer3, for: .normal)
        fourthAnswerButton.setTitle(trivia.answer4, for: .normal)
        
    }
    
    
}
