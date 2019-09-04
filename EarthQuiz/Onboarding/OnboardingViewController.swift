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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
//        slide
        slides = createSlides()
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        view.bringSubviewToFront(pageControl)
//
        
        UserDefaults.standard.register(defaults: ["Level" : 1, "Onboarding" : false, "ModalMap" : false, "FromUnlock" : false])
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
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "onboard1")
        slide1.labelTitle.text = "Life Cycle"
        slide1.labelDesc.text = "Did you know how much Co2  to make plastic? Find out by following life cycle of it!"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "onboard2")
        slide1.labelTitle.text = "Fun Quiz"
        slide1.labelDesc.text = "Test how far your knowledges about environment sustainability."
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "onboard3")
        slide1.labelTitle.text = "Mission from Earth"
        slide1.labelDesc.text = "Everyone can be smart. But who is smart enough to complete missions from earth? Dare to try?"
        
        return [slide1, slide2, slide3]
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
