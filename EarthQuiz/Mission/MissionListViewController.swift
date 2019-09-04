//
//  MissionListViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionListViewController: UIViewController {

    @IBOutlet weak var mission1View: UIView!
    @IBOutlet weak var mission2View: UIView!
    @IBOutlet weak var mission3View: UIView!
    @IBOutlet weak var mission4View: UIView!
    @IBOutlet weak var lblMission1: UILabel!
    @IBOutlet weak var lblMission2: UILabel!
    @IBOutlet weak var lblMission3: UILabel!
    @IBOutlet weak var lblMission4: UILabel!
    @IBOutlet weak var roundMissionPaper: roundView!
    @IBOutlet weak var roundMissionPlastic: roundView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        roundMissionPaper.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        roundMissionPaper.layer.shadowRadius = 20
        roundMissionPaper.layer.shadowOpacity = 1
        
        roundMissionPlastic.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        roundMissionPlastic.layer.shadowRadius = 20
        roundMissionPlastic.layer.shadowOpacity = 1
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(clickMission(_:)))
        mission1View.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(clickMission(_:)))
        mission1View.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(clickMission(_:)))
        mission1View.addGestureRecognizer(tapGesture3)
        
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(clickMission(_:)))
        mission1View.addGestureRecognizer(tapGesture4)
    }
    
    @objc func clickMission(_ sender: UITapGestureRecognizer) {
        let newViewController = storyboard?.instantiateViewController(withIdentifier: "MissionDetail") as! MissionDetailViewController
        let view = sender.view
        newViewController.missionTag = view!.tag
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
