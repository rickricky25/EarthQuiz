//
//  MissionPopupViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 02/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionPopupViewController: UIViewController {

    @IBOutlet weak var blurView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
