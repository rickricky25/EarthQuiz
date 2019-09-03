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
