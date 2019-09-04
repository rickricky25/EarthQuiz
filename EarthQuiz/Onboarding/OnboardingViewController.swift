//
//  OnboardingViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var btnOnboard: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet{
            scrollView.delegate = self
        }
    }
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides:[Slide] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        slide
        
//
        
        UserDefaults.standard.register(defaults: ["Level" : 1, "Onboarding" : false, "ModalMap" : false])
        btnOnboard.titleLabel?.text = "\(UserDefaults.standard.bool(forKey: "Onboarding"))"
        //print("tes")
        
        let boolOnboard = UserDefaults.standard.bool(forKey: "Onboarding")
        if boolOnboard {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
                let newStoryboard = UIStoryboard(name: "Home", bundle: nil)
                let newViewController = newStoryboard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
                let newNavigationController = UINavigationController(rootViewController: newViewController)
                //self.navigationController?.pushViewController(newNavigationController, animated: true)
                self.present(newNavigationController, animated: true, completion: nil)
            }
        }
        // Do any additional setup after loading the view.
    }
    
//    slide
    func createSlides() -> [Slide] {
        
    }
//
    
    @IBAction func OnboardingTapped(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "Onboarding")
        
        let newStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
        let newNavigationController = UINavigationController(rootViewController: newViewController)
        //self.navigationController?.pushViewController(newNavigationController, animated: true)
        self.present(newNavigationController, animated: true, completion: nil)
    }
}
