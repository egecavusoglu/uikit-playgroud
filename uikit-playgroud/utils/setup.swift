//
//  setup.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 7/31/22.
//

import UIKit

func rootView() -> UIView{
    let view = UIView(frame: UIScreen.main.bounds)
    view.backgroundColor = UIColor.systemBackground
    view.translatesAutoresizingMaskIntoConstraints = false
    return view;
}

func screenWidth() -> CGFloat {
    return UIScreen.main.bounds.width
}

func randomColor() -> UIColor {

    return UIColor(
        red:   random(),
        green: random(),
        blue:  random(),
        alpha: 1.0
    )
}

func random() -> CGFloat{
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
}
