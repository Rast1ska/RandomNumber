//
//  RandomButtonNumber.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 09.02.2023.
//

import UIKit

class RandomButtonNumber: UIButton {

    init(buttonText: String) {
        super.init(frame: .zero)
        setupButton(buttonText: buttonText)
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
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 7
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 15, height: 15)
        
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        setTitle(buttonText, for: .normal)
    }
}


