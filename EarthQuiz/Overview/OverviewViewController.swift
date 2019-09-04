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
    @IBOutlet weak var MyCharView: UIView!
    @IBOutlet weak var RenewableLogo: UIImageView!
    
    @IBOutlet weak var RecycleProgressView: UIProgressView!
    @IBOutlet weak var ReuseProgressView: UIProgressView!
    @IBOutlet weak var DegradeProgressView: UIProgressView!
    @IBOutlet weak var EnergyProgressView: UIProgressView!
    @IBOutlet weak var AirProgressView: UIProgressView!
    @IBOutlet weak var ChemicalsProgressView: UIProgressView!
    @IBOutlet weak var WaterProgressView: UIProgressView!
    
//    var character = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if character == 1 {
//
//        } else if character == 2 {
//
//        }
        
        RenewableLogo.layer.masksToBounds = true
        RenewableLogo.layer.cornerRadius = RenewableLogo.bounds.width / 2
        
//        THIS IS BARBAR STYLE
//        EDIT PROGRESS BAR
        // Progress Bar Customization
        //1
        self.RecycleProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.RecycleProgressView.transform = RecycleProgressView.transform.scaledBy(x: 1, y: 3)
        self.RecycleProgressView.layer.cornerRadius = 1.5
        self.RecycleProgressView.clipsToBounds = true
        self.RecycleProgressView.progress = 0.75
        
        //2
        self.ReuseProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.ReuseProgressView.transform = ReuseProgressView.transform.scaledBy(x: 1, y: 3)
        self.ReuseProgressView.layer.cornerRadius = 1.5
        self.ReuseProgressView.clipsToBounds = true
        self.ReuseProgressView.progress = 0.2
        
        //3
        self.DegradeProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.DegradeProgressView.transform = DegradeProgressView.transform.scaledBy(x: 1, y: 3)
        self.DegradeProgressView.layer.cornerRadius = 1.5
        self.DegradeProgressView.clipsToBounds = true
        self.DegradeProgressView.progress = 0.85
        
        //4
        self.EnergyProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.EnergyProgressView.transform = EnergyProgressView.transform.scaledBy(x: 1, y: 3)
        self.EnergyProgressView.layer.cornerRadius = 1.5
        self.EnergyProgressView.clipsToBounds = true
        self.EnergyProgressView.progress = 1
        
        //5
        self.WaterProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.WaterProgressView.transform = WaterProgressView.transform.scaledBy(x: 1, y: 3)
        self.WaterProgressView.layer.cornerRadius = 1.5
        self.WaterProgressView.clipsToBounds = true
        self.WaterProgressView.progress = 1
        
        //6
        self.AirProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.AirProgressView.transform = AirProgressView.transform.scaledBy(x: 1, y: 3)
        self.AirProgressView.layer.cornerRadius = 1.5
        self.AirProgressView.clipsToBounds = true
        self.AirProgressView.progress = 0.9
        
        //7
        self.ChemicalsProgressView.tintColor = #colorLiteral(red: 0.4612241983, green: 0.7124726772, blue: 0.328251183, alpha: 1)
        self.ChemicalsProgressView.transform = ChemicalsProgressView.transform.scaledBy(x: 1, y: 3)
        self.ChemicalsProgressView.layer.cornerRadius = 1.5
        self.ChemicalsProgressView.clipsToBounds = true
        self.ChemicalsProgressView.progress = 1
//
//
        
        // Do any additional setup after loading the view.
    }
}
