//
//  LMapViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class LMapViewController: UIViewController {

    @IBOutlet weak var backgroundMap: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        let boolMap = UserDefaults.standard.bool(forKey: "ModalMap")
        if boolMap == false {
            let modalViewController = storyboard?.instantiateViewController(withIdentifier: "Tutorial") as! TutorialViewController
            modalViewController.modalPresentationStyle = .overCurrentContext
            modalViewController.modalTransitionStyle = .crossDissolve
            present(modalViewController, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let userLevel = UserDefaults.standard.integer(forKey: "Level")
        var bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom)
        switch userLevel {
        case 1:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 100)
        case 2:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 150)
        case 3:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 250)
        case 4:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 400)
        case 5:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 500)
        case 6:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 650)
        case 7:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 800)
        case 8:
            bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom - 900)
        case 9:
            bottomOffset = CGPoint(x: 0, y: 0)
        case 10:
            bottomOffset = CGPoint(x: 0, y: 0)
        case 11:
            bottomOffset = CGPoint(x: 0, y: 0)
        case 12:
            bottomOffset = CGPoint(x: 0, y: 0)
        default:
            return
        }
        scrollView.setContentOffset(bottomOffset, animated: true)
        
        super.viewDidLoad()
    }
    
    @IBAction func btnLevelPressed(_ sender: UIButton) {
        let newStoryboard = UIStoryboard(name: "Quiz", bundle: nil)
        if sender.tag < 12 {
            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "QuizView") as! QuizViewController
            newViewController.level = sender.tag
            self.navigationController?.pushViewController(newViewController, animated: true)
        } else if sender.tag == 12 {
            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "Information") as! InformationViewController
            newViewController.level = sender.tag
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }
}
