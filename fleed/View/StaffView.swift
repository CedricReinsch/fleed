//
//  StaffView.swift
//  fleed
//
//  Created by Cedric Reinsch on 04.07.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import UIKit

class StaffView: UIView {

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.setStrokeColor(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
            context.move(to: CGPoint(x: 0, y: bounds.midY))
            context.addLine(to: CGPoint(x: bounds.maxX, y: bounds.midY))
            context.strokePath()
        }
    }
    
}
