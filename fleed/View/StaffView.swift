//
//  StaffView.swift
//  fleed
//
//  Created by Cedric Reinsch on 04.07.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import UIKit

@IBDesignable class StaffView: UIView {
    
    @IBInspectable var padding: CGFloat = 20
    @IBInspectable var lineSpacing: Int = 10

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            for lineIndex in -2...2 {
                context.move(to: CGPoint(x: padding, y: bounds.midY + CGFloat(lineIndex * lineSpacing)))
                context.addLine(to: CGPoint(x: bounds.maxX - padding, y: bounds.midY + CGFloat(lineIndex * lineSpacing)))
            }
            
            context.setStrokeColor(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
            context.strokePath()
        }
    }
    
}
