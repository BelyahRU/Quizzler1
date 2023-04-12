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
        
        override func viewDidLoad() {
            super.viewDidLoad()
            questionLabel.text = "Are you girl?"
        }

        @IBAction func answerPressed(_ sender: UIButton) {
        }
        
    
}

