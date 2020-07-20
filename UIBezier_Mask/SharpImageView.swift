//
//  SharpImageView.swift
//  UIBezier_Mask
//
//  Created by JillOU on 2020/7/20.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class SharpImageView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: bounds.width, y: 0))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        path.addLine(to: CGPoint(x: bounds.width*0.5, y: bounds.height*0.85))
        path.addLine(to: CGPoint(x: 0, y: bounds.height))
        path.close()
        let imagelayer = CAShapeLayer()
        imagelayer.path = path.cgPath
        layer.mask = imagelayer
    }

}
