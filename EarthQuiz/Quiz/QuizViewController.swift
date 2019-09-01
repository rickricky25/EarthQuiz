//
//  QuizViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var lblQuizTitle: UILabel!
    var quizTitle = ""
    var level = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblQuizTitle.text = quizTitle
    }
    
    @IBAction func btnAnswerPressed(_ sender: UIButton) {
        let levelUser = UserDefaults.standard.integer(forKey: "Level")
        if sender.tag == 1 {
            if level == levelUser {
                UserDefaults.standard.set(level + 1, forKey: "Level")
            }
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    
}
