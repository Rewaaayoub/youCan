//
//  Borders.swift
//  ProjectsGSG
//
//  Created by Rewaa on 11/17/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit

class Borders: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        self.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 22
    }
}
extension UIView{
    @IBInspectable  var cornerRaduis : CGFloat {
        get{
            return self.layer.cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    @IBInspectable  var borderWidth : CGFloat {
     get{
     return self.layer.borderWidth
     }
     set{
     self.layer.borderWidth = newValue
     }
     }
    @IBInspectable  var borderColor : UIColor {
        get{
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set{
            self.layer.borderColor = newValue.cgColor
        }
    }
}
