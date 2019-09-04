//
//  OverviewViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController {

    @IBOutlet weak var imgOverview: UIImageView!
    @IBOutlet weak var CharFullView: UIView!
    @IBOutlet weak var MyCharView: UIView!
    @IBOutlet weak var RenewableLogo: UIImageView!
    
    var character = 0
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        
//        if self.isMovingFromParent {
//            let newStoryboard = UIStoryboard(name: "Home", bundle: nil)
//            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
//            self.navigationController?.pushViewController(newViewController, animated: true)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if character == 1 {
            
        } else if character == 2 {
            
        }
        
        CharFullView.layer.cornerRadius = 50

        RenewableLogo.layer.masksToBounds = true
        RenewableLogo.layer.cornerRadius = RenewableLogo.bounds.width / 2
        
        
        // Do any additional setup after loading the view.
    }
}
