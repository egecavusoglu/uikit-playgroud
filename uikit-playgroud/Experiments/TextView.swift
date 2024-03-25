//
//  ViewController.swift
//  uikit-playgroud
//
//  Created by Ege Çavuşoğlu on 7/21/22.
//

import UIKit

class TextViewExperiment: UIViewController, UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = rootView()
        addSubviews()
    }
    
    func addSubviews() {
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        let attributedText = NSMutableAttributedString(string: "google.com")
        attributedText.addAttribute(.link, value: "https:google.com", range: NSRange(location: 0, length: attributedText.length))
        textView.attributedText = attributedText
        textView.center = view.center
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.isEditable = false
        textView.delegate = self
        view.addSubview(textView)
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        print("Touched text view")
        return false
    }
    
    func textViewDidChangeSelection(_ textView: UITextView) {
        print("Did change selection")
    }
    
    
}

