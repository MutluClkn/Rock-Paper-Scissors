//
//  ViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mutlu Çalkan on 6.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var userChoice: UILabel!
    @IBOutlet weak var computerChoice: UILabel!
    
    
    // MARK: - Variables/Constants
    var userScore = 0
    var computerScore = 0
    let computerChoiceArray = ["Rock","Paper","Scissors"]
    var randomElement = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userChoice.text = ""
        computerChoice.text = ""
        
    }
    
    
    
    // MARK: - IBActions
    @IBAction func rockButton(_ sender: Any) {
        randomElement = computerChoiceArray.randomElement()!
        userChoice.text = "Rock"
        if randomElement == computerChoiceArray[0] {
            computerChoice.text = computerChoiceArray[0]
        }else if randomElement == computerChoiceArray[1] {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
            computerChoice.text = computerChoiceArray[1]
        }else {
            userScore += 1
            userScoreLabel.text = String(userScore)
            computerChoice.text = computerChoiceArray[2]
        }
    }
    
    @IBAction func paperButton(_ sender: Any) {
        randomElement = computerChoiceArray.randomElement()!
        userChoice.text = "Paper"
        if randomElement == computerChoiceArray[1] {
            computerChoice.text = computerChoiceArray[1]
        }else if randomElement == computerChoiceArray[2] {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
            computerChoice.text = computerChoiceArray[2]
        }else {
            userScore += 1
            userScoreLabel.text = String(userScore)
            computerChoice.text = computerChoiceArray[0]
        }
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        randomElement = computerChoiceArray.randomElement()!
        userChoice.text = "Scissors"
        if randomElement == computerChoiceArray[2] {
            computerChoice.text = computerChoiceArray[2]
        }else if randomElement == computerChoiceArray[0] {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
            computerChoice.text = computerChoiceArray[0]
        }else {
            userScore += 1
            userScoreLabel.text = String(userScore)
            computerChoice.text = computerChoiceArray[1]
        }
    }
    
    @IBAction func restartButton(_ sender: Any) {
        
        userScoreLabel.text = "0"
        computerScoreLabel.text = "0"
        
    }
    
    
    
}




/*
// First view
let viewFirst : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

// Second view
let viewSecond : UIView = {
   let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

// Third view
let viewThird : UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()


//Main title
let title : UILabel = {
    let label = UILabel()
    label.text = "Rock Paper Scissors"
    label.font = .systemFont(ofSize: 20, weight: .bold)
    label.textColor = .darkText
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.lineBreakMode = .byWordWrapping
    label.numberOfLines = 0
    label.frame = CGRect(x: width / 2 - 150, y: height * 0.05, width: 300, height: 100)
    return header
}()


//Score label
let score : UILabel = {
    let label = UILabel()
    label.text = "0 : 0"
    label.font = .systemFont(ofSize: 45, weight: .bold)
    label.textColor = .darkText
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.lineBreakMode = .byWordWrapping
    label.numberOfLines = 0
    label.frame = CGRect(x: width / 2 - 150, y: height * 0.125, width: 300, height: 100)
    return label
}()


//Left button
let rockButton : UIButton = {
    let button = UIButton(frame: CGRect(x: 0, y: height / 1.5, width: width / 3, height: 150))
    button.setTitle("", for: .normal)
    button.setTitleColor(UIColor.darkText, for: .normal)
    button.setImage(UIImage.init(named: "rock"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(userDidPress), for: .touchUpInside)
    return button
}()


//Middle button
let paperButton : UIButton = {
    let button = UIButton(frame: CGRect(x: (width / 2) - (width / 6), y: height / 1.5, width: width / 3, height: 150))
    button.setImage(UIImage.init(named: "paper"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(userDidPress), for: .touchUpInside)
    return button
}()
//Right button
let scissorsButton : UIButton = {
    let button = UIButton(frame: CGRect(x: (width) - (width / 3), y: height / 1.5, width: width / 3, height: 150))
    button.setImage(UIImage.init(named: "scissors"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(userDidPress), for: .touchUpInside)
    return button
}()
*/
