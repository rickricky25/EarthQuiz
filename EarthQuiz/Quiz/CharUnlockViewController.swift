//
//  CharUnlockViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 02/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class CharUnlockViewController: UIViewController {
    @IBOutlet weak var CharacterUnlock: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CharacterUnlock.text = "You know a lot of new information.\nYou could go to  next level and met Paperino.\n\nBut you also have mission  to accomplished. Let's check it out."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
//        UserDefaults.standard.set(true, forKey: "FromUnlock")
//        self.dismiss(animated: true, completion: nil)
        let newStoryboard = UIStoryboard(name: "Mission", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "MissionList") as! MissionListViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
