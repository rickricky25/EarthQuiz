//
//  MapViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var btnMap5: UIButton!
    @IBOutlet weak var btnMap4: UIButton!
    @IBOutlet weak var btnMap3: UIButton!
    @IBOutlet weak var btnMap1: UIButton!
    @IBOutlet weak var btnMap2: UIButton!
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        let playerLevel = UserDefaults.standard.integer(forKey: "Level")
        
        btnMap2.isEnabled = true
        btnMap3.isEnabled = true
        btnMap4.isEnabled = true
        btnMap5.isEnabled = true
        
        if playerLevel == 1 {
            btnMap2.isEnabled = false
            btnMap3.isEnabled = false
            btnMap4.isEnabled = false
            btnMap5.isEnabled = false
        } else if playerLevel == 2 {
            btnMap3.isEnabled = false
            btnMap4.isEnabled = false
            btnMap5.isEnabled = false
        } else if playerLevel == 3 {
            btnMap4.isEnabled = false
            btnMap5.isEnabled = false
        } else if playerLevel == 4 {
            btnMap5.isEnabled = false
        }
    }
    
    @IBAction func mapPressed(_ sender: UIButton) {
        let newStoryboard = UIStoryboard(name: "Quiz", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "QuizView") as! QuizViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
}
