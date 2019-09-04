//
//  InformationViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit
import AVKit

class InformationViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet weak var imgInformation: UIImageView!
    @IBOutlet weak var lblInformation: UILabel!
    
    var level = 0
    var player: AVAudioPlayer?
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.title =  "Information \(level)"

        
        imgInformation.image = UIImage(named: "InfoPaperino\(level)")
        
//        if UserDefaults.standard.bool(forKey: "FromUnlock") {
//            let newStoryboard = UIStoryboard(name: "Mission", bundle: nil)
//            let newViewControl = newStoryboard.instantiateViewController(withIdentifier: "MissionList")
//            self.navigationController?.pushViewController(newViewControl, animated: true)
//            UserDefaults.standard.set(false, forKey: "FromUnlock")
//        }
        
        guard let file = Bundle.main.path(forResource: "AudioPaperino\(level)", ofType: "m4a") else {
            print("file not found")
            return
        }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
            
            
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: file))
            guard let playerTemp = player else { return }
            playerTemp.play()
        } catch  {
            print(error.localizedDescription)
        }

//        if let url = Bundle.main.url(forResource: "AudioPaperino11", withExtension: "m4a", subdirectory: "Audio") {
//            print(url)
//        }
        
//        let url = Bundle.main.url(forResource: "AudioPaperino11", withExtension: "m4a")!
//        do {
//            let player = try AVAudioPlayer(contentsOf: url)
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }

        if level == 1 {
            lblInformation.text = "I come from the forest, from one of the trees that's supposed to be kept to stop global warming. Nowadays people are exploiting me because they think that I’m a renewable resource. Well, they’re not wrong, but they’re being too greedy."
        } else if level == 2 {
            lblInformation.text = "2.47 million of my family is cut down every day, means 100.000 every hour. I’m not excessive to state that humans are greedy right? Because of their action, the earth loses 18.7 million acres of forests per year, which is equal to 27 soccer fields every minute."
        } else if level == 3 {
            lblInformation.text = "Some of them shout out, “we can just plant another tree”. Sounds simple, but that’s exactly my point. We need time to grow, at least 5 years to produce 1 ream of paper. Even to make it balance, you need to plant 1 trillion trees each year. Have you do that? If haven’t, who do you think responsible for that?"
        } else if level == 4 {
            lblInformation.text = "When the logging process started, human invite a lot of mega-machinary such as trucks or even helicopters to the forest to carry the logs. These machinary require fossil fuel to operate and roads to drive on. The logging process needs to be manage because if done unsustainably, it can give a large impact on the entire ecological chain. But it ironic that illegal logging is still an issue nowadays."
        } else if level == 5 {
            lblInformation.text = "In the factory, I need to be dried at least three years before I can transform to be a wood stew. The wood stew is then processed to become pulp. The pulp as my main material is then washed and bleached, both stages require thousands of gallons of clean water."
        } else if level == 6 {
            lblInformation.text = "To produce 1500 paper bags you need 1502 gallons of water. No, you’re not mistaken,1 gallon of water for 1 paper bag? What a waste. Did you know that there are 2 billion people don't have access to clean water in Africa?"
        } else if level == 7 {
            lblInformation.text = "Compare to plastic, to produce me you also produce 70 more air pollutant. Think about it. People are not only adding more air pollutant to our atmosphere but also killing the greatest tools to clean it. Ironic."
        } else if level == 8 {
            lblInformation.text = "Every 1000 of me needs 15 gallons gasoline that produce 30 kg CO2. This amout of CO2 needs 6 trees the whole year to clean it. In real life, 1000 doesn’t compare to anything, In America itself, people use 10 billion of me every year. Yeah now you can relate, how much people contribute CO2 to the atmosphere."
        } else if level == 9 {
            lblInformation.text = "My characteristic state that I’m biodegradable. Yes of course, I’m the baby of a tree. But I don’t break down any faster than plastic in landfills. That’s because, while I break down much faster under ideal conditions, landfills are not ideal conditions. The lack of light, air and oxygen means pretty much nothing decomposes, so plastico and me are destined to spend equal amounts of time there."
        } else if level == 10 {
            lblInformation.text = "Yes, I am reuse-able, but you need to be extra careful while using me. I’m not strong enough to bring heavy, watery and oily stuff. This make me more disposable than plastic. I’m too porous, and I’m done as soon as food or oil or water soak into my fibres. I have less reuse potential, my friend."
        } else if level == 11 {
            lblInformation.text = "I’d love the idea to recycle me. But do you know to do that, I need to be re-pulped, which require more toxic chemical, huge machinary, more fossil fuel and more water. Recycled version of me produces more pollution than making the new me. It just like you save a tree on one hand but pollute our air and rivers on the other. What’s the point?"
        } else if level == 12 {
            lblInformation.text = "It is true that I’m made from tree and tree is a sustainable resource but the energy and chemicals used to make me is not. I’m not blaming you, there’s a possibility you are clueless about all of this, and assume that you’re choosing the right bag to save the environment.\n\nNow, you know it. My question, would you make a change?"
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMapPressed(_ sender: UIButton) {
        if level == 12 {
            
//            let modalViewController = storyboard?.instantiateViewController(withIdentifier: "CharUnlock") as! CharUnlockViewController
//            modalViewController.modalPresentationStyle = .overCurrentContext
//            modalViewController.modalTransitionStyle = .crossDissolve
//            present(modalViewController, animated: true, completion: nil)
            let newViewController = storyboard?.instantiateViewController(withIdentifier: "CharUnlock") as! CharUnlockViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
        } else {
//            self.navigationController?.popViewController(animated: true)
//            self.navigationController?.popViewController(animated: true)
            
            let newStoryboard = UIStoryboard(name: "Overview", bundle: nil)
            let newViewController = newStoryboard.instantiateViewController(withIdentifier: "LargeMap") as! LMapViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
            
        }
    }
}
