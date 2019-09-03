//
//  roundButton.swift
//  EarthQuiz
//
//  Created by Mulyanti Law on 03/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class roundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
