//
//  CharUnlockViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 02/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class CharUnlockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        if sender.tag == 1 {
            _ = navigationController?.popToRootViewController(animated: true)
        } else if sender.tag == 2 {
            let newStoryboard = UIStoryboard(name: "Mission", bundle: nil)
            let newViewControl = newStoryboard.instantiateViewController(withIdentifier: "MissionList")
            self.navigationController?.pushViewController(newViewControl, animated: true)
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
