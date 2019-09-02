//
//  MissionListViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func MissionPressed(_ sender: UIButton) {
        let newViewController = storyboard?.instantiateViewController(withIdentifier: "MissionDetail") as! MissionDetailViewController
        if sender.tag ==  1 {
            newViewController.missionTitle = "Plastico Mission 1"
        } else if sender.tag == 2 {
            newViewController.missionTitle = "Plastico Mission 2"
        } else if sender.tag == 3 {
            newViewController.missionTitle = "Plastico Mission 3"
        } else if sender.tag == 4 {
            newViewController.missionTitle = "Paperino Mission 1"
        } else if sender.tag == 5 {
            newViewController.missionTitle = "Paperino Mission 2"
        } else if sender.tag == 6 {
            newViewController.missionTitle = "Paperino Mission 3"
        }
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
