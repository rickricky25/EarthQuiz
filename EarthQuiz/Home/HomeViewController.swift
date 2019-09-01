//
//  ViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var imgMission: UIImageView!
    @IBOutlet weak var imgCharacter: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureMission = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGesture:)))
        imgMission.isUserInteractionEnabled = true
        imgMission.addGestureRecognizer(tapGestureMission)
        
        let tapGestureCharacter = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGesture:)))
        imgCharacter.isUserInteractionEnabled = true
        imgCharacter.addGestureRecognizer(tapGestureCharacter)
    }
    
    @objc func imageTapped(tapGesture: UITapGestureRecognizer) {
        let tappedImage = tapGesture.view as! UIImageView
        
        if tappedImage == imgMission {
            let newStoryboard = UIStoryboard(name: "Mission", bundle: nil)
            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "MissionList") as! MissionListViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
        } else if tappedImage == imgCharacter {
            let newStoryboard = UIStoryboard(name: "Overview", bundle: nil)
            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "ItemOverview") as! OverviewViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }

}

