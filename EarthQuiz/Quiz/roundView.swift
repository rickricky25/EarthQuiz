//
//  roundView.swift
//  EarthQuiz
//
//  Created by Ricky Effendi on 04/09/19.
//  Copyright © 2019 Ricky Effendi. All rights reserved.
//

import UIKit

class roundView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
