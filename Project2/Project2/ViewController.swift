//
//  ViewController.swift
//  Project2
//
//  Created by Filip Mastalerz on 25/02/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    var correctAnswer = 0
    var questionsCounter = 0
    var alertMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .reply, target: self, action: #selector(showScoreTapped))
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "spain", "us", "uk"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
        let currentScore = String(score)
        
        title = title! + " - your score is: \(currentScore)"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            questionsCounter += 1
            alertMessage = ""
        } else {
            title = "Wrong"
            score -= 1
            questionsCounter += 1
            alertMessage = "That's the flag of: \(countries[sender.tag].capitalized). "
        }
        
        if questionsCounter == 2 {
            let ac = UIAlertController(title: "10th question answered - End of game!", message: "\(alertMessage)Your score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Restart", style: .default, handler: askQuestion))
            present(ac, animated: true)
            
            score = 0
            questionsCounter = 0
        } else {
            let ac = UIAlertController(title: title, message: "\(alertMessage)Your score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }
    }
    
    @objc func showScoreTapped() {
        let castedScore: String = String(score)
        let vc = UIActivityViewController(activityItems: ["My score is: \(castedScore)"], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    }
}

