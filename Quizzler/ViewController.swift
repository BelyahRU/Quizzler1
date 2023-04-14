//
//  ViewController.swift
//  Quizzler
//
//  Created by Александр Андреев on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    let questions = [Questions(text: "There are stars and zigzags on the flag of America", answer: "False"),
                     Questions(text: "The dinosaur with the longest neck for its body size is Mamenchisaurus hochuanensis, a sauropod dino that lived in what is now China.", answer: "True"),
                     Questions(text: "The moon is just 50 percent of the mass of Earth.", answer: "False"),
                     Questions(text: "Your hand has a built in snuff box", answer: "True"),
                     Questions(text: "Apes cant laugh.", answer: "True")]
    var questionNumber = 1
    override func viewDidLoad() {
        questionLabel.text = questions[0].text
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel!.text!
        let trueAnswer = questions[1].answer
        print(userAnswer)
        if questionNumber == questions.count-1{
            questionNumber = 0
        } else {
            questionNumber += 1
        }
        updateUi()
    }
    
    func updateUi(){
        questionLabel.text = questions[questionNumber].text
    }
        
    
}

