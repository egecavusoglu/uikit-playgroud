//
//  ReorderCollectionViewController.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 12/20/22.
//

import UIKit

let cellReuseID = "box-cell"

class ReorderCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var boxes = Array(repeating: 1, count: 10)

    override func viewDidLoad() {
        setUpNavigationBar()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseID)
    }

    func setUpNavigationBar() {
        title = "Reorder"
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        boxes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseID, for: indexPath)
        let box = Box()
        cell.contentView.addSubview(box)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: screenWidth() - 20, height: 160)
    }

    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }

}

func Box() -> UIView{
    let view = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: screenWidth(), height: 160)))
    view.translatesAutoresizingMaskIntoConstraints = false
    view.layer.cornerRadius = 20
    view.backgroundColor = randomColor()
    return view
}
