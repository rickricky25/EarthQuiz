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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

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
            lblQuizQuestion.text = "Tree needs to be felled, processed and moved to a location for transport. Do you know what people use to called this process?"
            btnAnswerTop.setTitle("Pulping", for: .normal)
            btnAnswerBottom.setTitle("Logging", for: .normal)
        } else if level == 5 {
            lblQuizQuestion.text = "Even that I’m made from tree, it need to be process before I can be transform into a paper. Do you know the main material to produce me?"
            btnAnswerTop.setTitle("Pulp", for: .normal)
            btnAnswerBottom.setTitle("Polyethylene", for: .normal)
        } else if level == 6 {
            lblQuizQuestion.text = "There’s a lot of water is needed to produce me, can you guess how much is it to made each of me?"
            btnAnswerTop.setTitle("1 gallon", for: .normal)
            btnAnswerBottom.setTitle("1 liter", for: .normal)
        } else if level == 7 {
            lblQuizQuestion.text = "If we take a look to the air side, which one do you think produce more pollutant?"
            btnAnswerTop.setTitle("Paper", for: .normal)
            btnAnswerBottom.setTitle("Plastic", for: .normal)
        } else if level == 8 {
            lblQuizQuestion.text = "Can you guess how much CO2 sent to the atmosphere to produce me?"
            btnAnswerTop.setTitle("10 kg CO2 per 1000 paper bags", for: .normal)
            btnAnswerBottom.setTitle("30 kg CO2 per 1000 paper bags", for: .normal)
        } else if level == 9 {
            lblQuizQuestion.text = "There’s several reason that make people choosing me over plastic. First my degrade-ability. What do you think about it?"
            btnAnswerTop.setTitle("Agree, that’s one of paper power.", for: .normal)
            btnAnswerBottom.setTitle("Well, i don’t think so.", for: .normal)
        } else if level == 10 {
            lblQuizQuestion.text = "Second, what do you think about my reusability?"
            btnAnswerTop.setTitle("Agree, that’s another power of paper!", for: .normal)
            btnAnswerBottom.setTitle("I doubt that.", for: .normal)
        } else if level == 11 {
            lblQuizQuestion.text = "Third, my recycle-ability. What do you think about it?"
            btnAnswerTop.setTitle("Agree, that’s why I choose paper.", for: .normal)
            btnAnswerBottom.setTitle("No, I don’t think so.", for: .normal)
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
                lblQuizQuestion.text = "That’s a lot of tree, but in fact there’s more than that."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Smart! That’s a really big number right."
            }
        } else if level == 3 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Oh, that's not enough my friend."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Yes, you're right."
            }
        } else if level == 4 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Sorry, but the process named logging."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Yes, you’re right."
            }
        } else if level == 5 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Wow, you know a lot about me."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Hmm, polyethylene is the main materials to create plastico."
            }
        } else if level == 6 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "True, nice guess."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "whoops, that’s not enough."
            }
        } else if level == 7 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "That’s right!"
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Most people are thinking the same way with you, but paper contribute more air pollutant to our earth."
            }
        } else if level == 8 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "Oh bad, in fact it’s 3 times more than what you think."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "True! It’s horrible, isn’t it?"
            }
        } else if level == 9 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "True, and here’s the fact."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Actually, I am. but here’s the fact."
            }
        } else if level == 10 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "True, and here’s the fact."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Actually, I am. but here’s the fact."
            }
        } else if level == 11 {
            if sender.tag == 1 {
                lblQuizQuestion.text = "True, and here’s the fact."
            } else if sender.tag == 2 {
                lblQuizQuestion.text = "Actually, I am. but here’s the fact."
            }
        }
    }
    
    
}
