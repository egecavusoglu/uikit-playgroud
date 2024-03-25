//
//  Experiment.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 7/31/22.
//

import Foundation
import UIKit

struct Experiment {
    let title: String
    let viewController: UIViewController
}

let EXPERIMENTS: [Experiment] = [
    Experiment(title: "Text View Delegate", viewController: TextViewExperiment()),
    Experiment(title: "Reorder", viewController: ReorderCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())),
    Experiment(title: "Balloons", viewController: BalloonsViewController())
]
