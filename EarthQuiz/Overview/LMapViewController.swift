//
//  LMapViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class LMapViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        let modalViewController = storyboard?.instantiateViewController(withIdentifier: "Tutorial") as! TutorialViewController
        modalViewController.modalPresentationStyle = .overCurrentContext
        modalViewController.modalTransitionStyle = .crossDissolve
        present(modalViewController, animated: true, completion: nil)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom)
        scrollView.setContentOffset(bottomOffset, animated: true)
        
        super.viewDidLoad()
    }
    
    @IBAction func btnLevelPressed(_ sender: UIButton) {
        let newStoryboard = UIStoryboard(name: "Quiz", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "QuizView") as! QuizViewController
        if sender.tag == 1 {
            newViewController.level = 1
        } else if sender.tag == 2 {
            newViewController.level = 2
        } else if sender.tag == 3 {
            newViewController.level = 3
        } else if sender.tag == 4 {
            newViewController.level = 4
        } else if sender.tag == 5 {
            newViewController.level = 6
        } else if sender.tag == 6 {
            newViewController.level = 6
        } else if sender.tag == 7 {
            newViewController.level = 7
        } else if sender.tag == 8 {
            newViewController.level = 8
        }
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
