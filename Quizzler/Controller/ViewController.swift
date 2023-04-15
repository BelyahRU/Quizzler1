import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    var quizz = quizzlerModel()
    
    override func viewDidLoad() {
        scoreLabel.text = "Score: 0"
        questionLabel.text = quizz.changeText()
        trueButton.backgroundColor = UIColor.gray
        falseButton.backgroundColor = UIColor.gray
        progressBar.progress = 0
    }
        
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel!.text!
        let ckeckAnswer = quizz.checkAnswer(userAnswer)
        
        if ckeckAnswer{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizz.addingScore()
        
        progressBar.progress = Float(quizz.questionNumber) / Float((quizz.questions.count-1))
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }
    
    @objc func updateUi(){
        questionLabel.text = quizz.changeText()
        scoreLabel.text = "Score: \(quizz.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        trueButton.backgroundColor = UIColor.gray
        falseButton.backgroundColor = UIColor.gray

    }
        
    
}

