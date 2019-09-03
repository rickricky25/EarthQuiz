//
//  MissionDetailViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionDetailViewController: UIViewController {

    @IBOutlet weak var lblMissionTitle: UILabel!
    
    @IBOutlet var blurView: UIView!
    var missionTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMissionTitle.text = missionTitle

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
