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
        present(modalViewController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
