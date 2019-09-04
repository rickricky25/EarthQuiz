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
    @IBOutlet weak var btnAnswerTop: UIButton!
    @IBOutlet weak var btnAnswerBottom: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    var level = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationController?.navigationItem.largeTitleDisplayMode = .never
        self.title = "Level \(level)"
        btnAnswerBottom.isHidden = false
        btnAnswerTop.isHidden = false
        btnNext.isHidden = true
        imgQuiz.image = UIImage(named: "Paperbag\(level)")
        if level == 1 {
            lblQuizQuestion.text = "Bonjour~\n\nI'm Paperino. I'm the famous eco-friendly product to replace plastic. Do you know where I come from?"
            btnAnswerTop.setTitle("Forest", for: .normal)
            btnAnswerBottom.setTitle("Farm", for: .normal)
        } else if level == 2 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 3 {
            lblQuizQuestion.text = "A tree needs time to grow. How many years do you think required to produce 1 ream of paper?"
            btnAnswerTop.setTitle("3 years", for: .normal)
            btnAnswerBottom.setTitle("5 years", for: .normal)
        } else if level == 4 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 5 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 6 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 7 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 8 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 9 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 10 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 11 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        } else if level == 12 {
            lblQuizQuestion.text = "Do you know how many trees to cut down to produce me?"
            btnAnswerTop.setTitle("100.000 every day", for: .normal)
            btnAnswerBottom.setTitle("100.000 every hour", for: .normal)
        }
    }
    
    @IBAction func btnAnswerPressed(_ sender: UIButton) {
        let levelUser = UserDefaults.standard.integer(forKey: "Level")
        if level == levelUser {
            UserDefaults.standard.set(level + 1, forKey: "Level")
        }
        btnAnswerBottom.isHidden = true
        btnAnswerTop.isHidden = true
        btnNext.isHidden = false
        
        if sender.tag == 3 {
            let newViewController = storyboard?.instantiateViewController(withIdentifier: "Information") as! InformationViewController
            newViewController.level = level
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
        
        if level == 1 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 2 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 3 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Oh, that's not enough my friend."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Yes, you're right."
            }
        } else if level == 4 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 5 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 6 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 7 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 8 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 9 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 10 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        } else if level == 11 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Exactly! I'm the baby of tree."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Oops, farm sounds nice but that's not where I came from."
            }
        }
    }
    
    
}
