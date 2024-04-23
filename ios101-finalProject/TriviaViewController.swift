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
        print("this is a question number: ", questionNumberLabel.text)
    }
    
    private func createMockData() -> [TriviaInformation] {
        let mockData1 = TriviaInformation(questionNum: .question1,
                                          question: "What year was Taylor Swift born?",
                                          answer1: "1989",
                                          answer2: "2002",
                                          answer3: "1975",
                                          answer4: "2013")
        let mockData2 = TriviaInformation(questionNum: .question2,
                                          question: "Which of these albums will NOT be re-recorded?",
                                          answer1: "Fearless",
                                          answer2: "Lover",
                                          answer3: "reputation",
                                          answer4: "Speak Now")
        let mockData3 = TriviaInformation(questionNum: .question3,
                                          question: "Which of these songs is from Folklore?",
                                          answer1: "evermore",
                                          answer2: "Should've Said No",
                                          answer3: "cardigan",
                                          answer4: "Holy Ground")
        
        return [mockData1, mockData2, mockData3]
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
