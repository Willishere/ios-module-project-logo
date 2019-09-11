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
            let bottomLeftSquarePoint = CGPoint(x: 50, y: 250)
            let bottomTip = CGPoint(x: 150, y: 300)
            let bottomRightSquarePoint = CGPoint(x: 250, y: 250)
            let topRightPoint = CGPoint(x: 250, y: 100)



            context.move(to: topLeftPoint)
            context.addLine(to: bottomLeftSquarePoint)
            context.addLine(to: bottomTip)
            context.addLine(to: bottomRightSquarePoint)
            context.addLine(to: topRightPoint)

            
            
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
        }
        
        if let shieldContext = UIGraphicsGetCurrentContext(){
            let lambdaTip = CGPoint(x: 150, y: 125)
            let lambdaForwardSlash = CGPoint(x: 80, y: 240)
            let lambdaBackSlash = CGPoint(x: 220, y: 240)
            
            shieldContext.move(to: lambdaTip)
            shieldContext.addLine(to: lambdaForwardSlash)
            shieldContext.move(to: lambdaTip)
            shieldContext.addLine(to: lambdaBackSlash)
            shieldContext.setLineWidth(10)
            shieldContext.setStrokeColor(UIColor.white.cgColor)
            shieldContext.strokePath()
            
            shieldContext.move(to: CGPoint(x: lambdaTip.x-5, y: 125))
            shieldContext.addLine(to: CGPoint(x: lambdaTip.x+5, y:125))
            shieldContext.setLineWidth(4)
            shieldContext.strokePath()
        }
       
    }
    

}
