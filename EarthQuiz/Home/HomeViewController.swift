//
//  ViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var btnMission: UIButton!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
//        Mission Button Color
        btnMission.backgroundColor = #colorLiteral(red: 0.7345408797, green: 0.3556827307, blue: 0.7285602689, alpha: 1)
        
//        Remove Navbar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func moveToMission(_ sender: Any) {
        
    }
    
    

}

