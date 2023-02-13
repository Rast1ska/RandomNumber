//
//  RandomButtonNumber.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 09.02.2023.
//

import UIKit

class RandomButtonNumber: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    convenience init(textTitle: String) {
        self.init(type: .system)
        setupButton(buttonText: textTitle)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(buttonText: String) {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemGreen
        layer.cornerRadius = 10
        titleLabel?.font = .boldSystemFont(ofSize: 18)
        tintColor = .white
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 7
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 15, height: 15)
        
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        setTitle(buttonText, for: .normal)
    }
}


