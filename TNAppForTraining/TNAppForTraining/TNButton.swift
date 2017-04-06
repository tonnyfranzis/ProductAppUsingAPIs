//
//  TNButton.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 09/12/16.
//  Copyright © 2016 Focaloid. All rights reserved.
//

import UIKit

class TNButton: UIButton {

    @IBInspectable var titleColor: UIColor = UIColor.redColor()
    @IBInspectable var cornerRadius: CGFloat = 0
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.titleLabel?.textColor = titleColor
        self.layer.cornerRadius = cornerRadius
    }
 

}
