//
//  MissionUnlockViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 02/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionUnlockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMissionPressed(_ sender: UIButton) {
        let newViewController = storyboard?.instantiateViewController(withIdentifier: "MissionCard")  as! MissionCardViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
        if sender.tag == 1 {
            newViewController.titleCard = "Mission 1"
        } else if sender.tag == 2 {
            newViewController.titleCard = "Mission 2"
        } else if sender.tag == 3 {
            newViewController.titleCard = "Mission 3"
        }
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
