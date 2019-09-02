//
//  MissionCardViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 02/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class MissionCardViewController: UIViewController {

    @IBOutlet weak var lblTitleCard: UILabel!
    var titleCard = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitleCard.text = titleCard

        // Do any additional setup after loading the view.
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
