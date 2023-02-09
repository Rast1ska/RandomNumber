//
//  ViewController.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 08.02.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let getRandomNumberButton = RandomButtonNumber(buttonText: "Get random number!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .systemCyan
        setupNavigationController()
        addSubview()
        setupConstraints()
    }
    
    private func setupNavigationController() {
        title = "Random Number"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func addSubview() {
        view.addSubview(getRandomNumberButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            getRandomNumberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getRandomNumberButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            getRandomNumberButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
}

