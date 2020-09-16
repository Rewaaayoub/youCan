//
//  Border2.swift
//  ProjectsGSG
//
//  Created by Rewaa on 12/3/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit

class Border2: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  
        
        /*
         // Only override draw() if you perform custom drawing.
         // An empty implementation adversely affects performance during animation.
         override func draw(_ rect: CGRect) {
         // Drawing code
         }
         */
        override func awakeFromNib() {
            self.layer.borderColor = #colorLiteral(red: 0, green: 0.7000498176, blue: 0.7066878676, alpha: 0.05123608733)
            self.layer.borderWidth = 1
            self.layer.cornerRadius = 10
        }

}
