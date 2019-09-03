//
//  InformationViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit
import AVFoundation

class InformationViewController: UIViewController {
    @IBOutlet weak var imgInformation: UIImageView!
    @IBOutlet weak var lblInformation: UILabel!
    
    var level = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        if level == 1 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 2 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 3 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 4 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 5 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 6 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 7 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 8 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 9 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 10 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 11 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 12 {
            imgInformation.image = UIImage(named: "InfoPaperino01")
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        }
        
        let player = AVQueuePlayer()
        if let url = Bundle.main.url(forResource: "AudioPaperino\(level)", withExtension: "m4a") {
            print(url)
            player.removeAllItems()
            player.insert(AVPlayerItem(url: url), after: nil)
            player.play()
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMapPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}
