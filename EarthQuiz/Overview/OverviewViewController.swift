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
    @IBOutlet weak var lblOverviewTitle: UILabel!
    @IBOutlet weak var lblOverviewDescription: UILabel!
    
    var overviewImage = "", overviewTitle = "", overviewDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
