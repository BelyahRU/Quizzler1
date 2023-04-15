import Foundation
struct quizzlerModel {
    let questions = [Questions(text: "There are stars and zigzags on the flag of America", answer: "False"),
                     Questions(text: "The dinosaur with the longest neck for its body size is Mamenchisaurus hochuanensis, a sauropod dino that lived in what is now China.", answer: "True"),
                     Questions(text: "The moon is just 50 percent of the mass of Earth.", answer: "False"),
                     Questions(text: "Your hand has a built in snuff box", answer: "True"),
                     Questions(text: "Apes cant laugh.", answer: "True")]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == questions[questionNumber].answer {
            score += 1
            return true
        }
        return false
    }
    mutating func addingScore() {
        if questionNumber == questions.count-1 {
            questionNumber = 0
            score = 0
        } else {
            questionNumber += 1
        }
    }
    
    
    func changeText() -> String{
        return questions[questionNumber].text
    }
    
    func getScore()->Int {
        return score
    }
}
