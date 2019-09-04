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
            lblMissionTitle.text = "Use reusable lunch bag"
            txtHowTo.text = "Each time you planned to go shopping, don’t forget to bring your eco bag or your usual bag."
            txtImpact.text = "By doing this, you can save 6 paper bags a week. I hope you keep the consistency and save 312 paper bags a year, or make it as a habit and save over 20.000 paper in your life time (65 years). \nIf just 1 out of 5 people in Indonesia did it, we would save the earth from loses its forest and save millions of trees."
            txtHacks.text = "1. When you forget to bring your eco bag, if it possible, try to put your goods to your own bag\n2. Always put your eco bag on your everyday’s bag\n3. Buy a lightweight foldable eco bag that you can hang on your bag."
        case 2:
            lblMissionTitle.text = "Use reusable lunch bag"
            txtHowTo.text = ""
            txtImpact.text = ""
            txtHacks.text = ""
        case 3:
            lblMissionTitle.text = "Use reusable lunch bag"
            txtHowTo.text = ""
            txtImpact.text = ""
            txtHacks.text = ""
        case 4:
            lblMissionTitle.text = "Use reusable lunch bag"
            txtHowTo.text = ""
            txtImpact.text = ""
            txtHacks.text = ""
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
