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
