//
//  LogoVIew.swift
//  Logo
//
//  Created by William Chen on 9/11/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class LogoVIew: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext(){
            let topLeftPoint = CGPoint(x: 50, y: 100)
            let bottomLeftSquarePoint = CGPoint(x: 50, y: 400)
            let bottomRightSquarePoint = CGPoint(x: 250, y: 400)
            let topRightPoint = CGPoint(x: 250, y: 100)
            
            context.move(to: topLeftPoint)
            context.addLine(to: bottomLeftSquarePoint)
            context.addLine(to: bottomRightSquarePoint)
            context.addLine(to: topRightPoint)
            
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
        }
       
    }
    

}
