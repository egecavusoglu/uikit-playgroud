//
//  BalloonLayer.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 3/24/24.
//

import Foundation
import UIKit

class BaloonLayer: CAShapeLayer {

    override init() {
        super.init()
        let circlePath = UIBezierPath(arcCenter: .zero,
                                      radius: 36,
                                      startAngle: 0,
                                      endAngle: CGFloat(Double.pi * 2),
                                      clockwise: true)
        path = circlePath.cgPath
        fillColor = randomColor().cgColor
        opacity = 0.4
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
