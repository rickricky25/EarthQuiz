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
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return imgThumbnailList.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = thumbnailCollection.dequeueReusableCell(withReuseIdentifier: "thumbnailCollection", for: indexPath) as! HomeCollectionViewCell
//        cell.imgThumbnail.image = UIImage(named: imgThumbnailList[indexPath.row])
//        cell.lblThumbnail.text = "Hello, I'm \(lblThumbnailList[indexPath.row])!"
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let newStoryboard = UIStoryboard(name: "Overview", bundle: nil)
//        let newViewController = newStoryboard.instantiateViewController(withIdentifier: "ItemOverview") as! OverviewViewController
//        newViewController.character = indexPath.row
//        self.navigationController?.pushViewController(newViewController, animated: true)
//    }
    

    @IBOutlet weak var btnMission: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidLoad()
        
//        Mission Button Color
        btnMission.backgroundColor = #colorLiteral(red: 0.7345408797, green: 0.3556827307, blue: 0.7285602689, alpha: 1)
        
//        Remove Navbar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func moveToMission(_ sender: Any) {
        
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
        newViewController.character = indexPath.row
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
}

