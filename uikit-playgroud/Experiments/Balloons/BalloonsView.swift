//
//  BalloonsView.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 3/24/24.
//

import Foundation
import UIKit

class BaloonView: UIView {

    // MARK: - UIView overrides

    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return false
    }

    // MARK: - Public

    public func start() {
        for i in 0...20 {
            let baloon = makeBaloon()
            layer.addSublayer(baloon)
            baloon.add(makeFloatingAnimation(delayedBy: i), forKey: "flying")
        }
    }

    // MARK: - Private

    private func makeX() -> CGFloat { return CGFloat.random(in: -100...frame.width - 20) }

    private func makeStartingPoint() -> CGPoint { return CGPoint(x: frame.width + 20, y: frame.height + 60)}

    private func makeBaloon() -> CALayer {
        let layer = BaloonLayer()
        layer.frame = CGRect(origin: makeStartingPoint(), size: CGSize(width: 36, height: 36))
        return layer
    }

    private func makeFloatingAnimation(delayedBy index: Int) -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = makeStartingPoint()
        animation.toValue = CGPoint(x: makeX(), y: -20)
        animation.duration = Double.random(in: 3...3.8)
        animation.beginTime = CACurrentMediaTime() + 0.08 * Double(index)
        return animation
    }

}
