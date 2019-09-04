//
//  MissionDetailViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionDetailViewController: UIViewController {

    @IBOutlet weak var txtHowTo: UITextView!
    @IBOutlet weak var txtImpact: UITextView!
    @IBOutlet weak var txtHacks: UITextView!
    @IBOutlet weak var lblMissionTitle: UILabel!
    var missionTag = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        switch missionTag {
        case 1:
            lblMissionTitle.text = " Bring eco bag when shopping"
            txtHowTo.text = "Each time you planned to go shopping, don’t forget to bring your eco bag or your usual bag."
            txtImpact.text = "By doing this, you can save 6 paper bags a week. I hope you keep the consistency and save 312 paper bags a year, or make it as a habit and save over 20.000 paper in your life time (65 years). \nIf just 1 out of 5 people in Indonesia did it, we would save the earth from loses its forest and save millions of trees."
            txtHacks.text = "1. When you forget to bring your eco bag, if it possible, try to put your goods to your own bag\n2. Always put your eco bag on your everyday’s bag\n3. Buy a lightweight foldable eco bag that you can hang on your bag."
        case 2:
            lblMissionTitle.text = "Use reusable lunch bag"
            txtHowTo.text = "Instead of using paper bag for your lunch, you could use reusable lunch bag. Reusable lunch bag could be used for more"
            txtImpact.text = "By doing this, you can save 5 paper bags a week. I hope you keep the consistency and save 260 paper bags a year, or make it as a habit and save over 16.000 paper in your life time.\nIf just 1 out of 5 people in Indonesia did it, we would save the earth from loses its forest and save millions of trees."
            txtHacks.text = "1. Prepare your own lunch\n2. Put your lunch bag within your sight, so you remember to bring it\n3. Bring your lunch bag when you planned to buy your lunch\n4. Buy an insulated lunch bag to keep your food cold or warm"
        case 3:
            lblMissionTitle.text = "Collect & Reuse your paper bag"
            txtHowTo.text = "Sometimes, it’s inevitable to get paper bag when buying goods. But, you can collect and store them in cool place, and reuse them later."
            txtImpact.text = "By doing this, you can save 52paper bags a week. I hope you keep the consistency and save 104 paper bags a year, or make it as a habit and save over 6.000 paper in your life time.\nIf just 1 out of 5 people in Indonesia did it, we would save the earth from loses its forest and save millions of trees."
            txtHacks.text = "1. Collect your paper bag on one cool place\n2. Store only the dry paper bag, you can’t reuse broken paper bag\n3. You can use paper bag for giving gifts to relatives.\n4. Don’t use paper bag for wet goods"
        case 4:
            lblMissionTitle.text = "Use as wrapping paper"
            txtHowTo.text = "You can craft your paper bag into wrapping paper. It can be used for book cover or wrap your gifts, right after you cut up the paper bag."
            txtImpact.text = "By doing this, you can save 52paper bags a week. I hope you keep the consistency and save 104 paper bags a year, or make it as a habit and save over 6.000 paper in your life time.\nIf just 1 out of 5 people in Indonesia did it, we would save the earth from loses its forest and save millions of trees."
            txtHacks.text = "1. Make sure that you already remove the soiled part of your paper bag (if it soiled)\n2. Cut into rectangle then wrap your things"
        default:
            return
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAcceptPressed(_ sender: UIButton) {
//        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = blurView.bounds
//        //        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        blurView.addSubview(blurEffectView)
        
        let modalViewController = storyboard?.instantiateViewController(withIdentifier: "MissionPopup") as! MissionPopupViewController
        modalViewController.modalPresentationStyle = .overCurrentContext
        modalViewController.modalTransitionStyle = .crossDissolve
        present(modalViewController, animated: true, completion: nil)
    }
    
}
