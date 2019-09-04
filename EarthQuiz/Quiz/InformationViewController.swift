//
//  InformationViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit
import AVFoundation

class InformationViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet weak var imgInformation: UIImageView!
    @IBOutlet weak var lblInformation: UILabel!
    
    var level = 0
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor =  UIColor(displayP3Red: 0.52, green: 0.71, blue: 0.38, alpha: 1)
        self.title =  "Information \(level)"
        
        imgInformation.image = UIImage(named: "InfoPaperino\(level)")
        
//        let player = AVQueuePlayer()
//        if let url = Bundle.main.url(forResource: "AudioPaperino11", withExtension: "m4a", subdirectory: "Audio") {
//            print(url)
//            player.removeAllItems()
//            player.insert(AVPlayerItem(url: url), after: nil)
//            player.play()
//        }
        
        let url = Bundle.main.url(forResource: "AudioPaperino11", withExtension: "m4a")!
        do {
            let player = try AVAudioPlayer(contentsOf: url)
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        if level == 1 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 2 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 3 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 4 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 5 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 6 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 7 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 8 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 9 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 10 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 11 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMapPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}
