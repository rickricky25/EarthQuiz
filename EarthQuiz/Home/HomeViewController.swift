//
//  ViewController.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 01/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var thumbnailCollection: UICollectionView!
    
    let imgThumbnailList = ["ThumbPaperino", "ThumbPlastico"]
    let lblThumbnailList = ["Paperino", "Plastico"]

    @IBOutlet weak var btnMission: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
//        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        self.navigationController?.navigationBar.barTintColor =  UIColor(displayP3Red: 0.52, green: 0.71, blue: 0.38, alpha: 1)
        
        
//        Mission Button Color
        btnMission.backgroundColor = #colorLiteral(red: 0.7345408797, green: 0.3556827307, blue: 0.7285602689, alpha: 1)
        
//        Remove Navbar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func btnMissionPressed(_ sender: UIButton) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let newStoryboard = UIStoryboard(name: "Mission", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "MissionList") as! MissionListViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    

}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgThumbnailList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = thumbnailCollection.dequeueReusableCell(withReuseIdentifier: "thumbnailCollection", for: indexPath) as! HomeCollectionViewCell
        cell.imgThumbnail.image = UIImage(named: imgThumbnailList[indexPath.row])
        cell.lblThumbnail.text = "Hello, I'm \(lblThumbnailList[indexPath.row])!"
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let newStoryboard = UIStoryboard(name: "Overview", bundle: nil)
        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "ItemOverview") as! OverviewViewController
        //newViewController.character = indexPath.row
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
}

