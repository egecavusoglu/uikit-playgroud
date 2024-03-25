//
//  BalloonsViewController.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 3/23/24.
//

import Foundation
import UIKit

class BalloonsViewController: UIViewController {

    private lazy var baloonView: BaloonView = {
        BaloonView(frame: view.frame)
    }()

    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Release", for: .normal)
        button.addTarget(self, action: #selector(startAnimation), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        view.addSubview(baloonView)
    }

    @objc func startAnimation() {
        baloonView.start()
    }

}
