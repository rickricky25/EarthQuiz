//
//  QuizViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var imgQuiz: UIImageView!
    @IBOutlet weak var lblQuizQuestion: UILabel!
    @IBOutlet weak var lblQuizTitle: UILabel!
    @IBOutlet weak var btnAnswerTop: UIButton!
    @IBOutlet weak var btnAnswerBottom: UIButton!
    
    var quizTitle = ""
    var level = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if level == 1 {
            lblQuizTitle.text = "Level 1"
            lblQuizQuestion.text = "Bonjour~\n\nI'm Paperino. I'm the famous eco-friendly product to replace plastic. Do you know where I come from?"
            btnAnswerTop.setTitle("Forest", for: .normal)
            btnAnswerBottom.setTitle("Farm", for: .normal)
            imgQuiz.image = UIImage(named: "Paperbag1")
        } else if level == 2 {
            lblQuizTitle.text = "Level 2"
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
            imgQuiz.image = UIImage(named: "Paperbag2")
        } else if level == 3 {
            
        } else if level == 4 {
            
        } else if level == 5 {
            
        } else if level == 6 {
            
        } else if level == 7 {
        
        } else if level == 8 {
            
        }
    }
    
    @IBAction func btnAnswerPressed(_ sender: UIButton) {
        let levelUser = UserDefaults.standard.integer(forKey: "Level")
        if sender.tag == 1 {
            if level == levelUser {
                UserDefaults.standard.set(level + 1, forKey: "Level")
            }
            if level == 8 {
                let newViewController = storyboard?.instantiateViewController(withIdentifier: "CharUnlock") as! CharUnlockViewController
                self.navigationController?.pushViewController(newViewController, animated: true)
            } else {
                _ = navigationController?.popViewController(animated: true)
            }
        } else if sender.tag == 2 {
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    
}
