//
//  DetailViewController.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 13.02.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    let minTextField = NumberTextField(placeholder: "min number...")
    let maxTextField = NumberTextField(placeholder: "max number...")
    let saveButton = RandomButtonNumber(textTitle: "Save")
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
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
    
    private func addSubview() {
        stackView.addArrangedSubview(minTextField)
        stackView.addArrangedSubview(maxTextField)
        view.addSubview(stackView)
        
        view.addSubview(saveButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            saveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
    
    private func setupNavigationController() {
        title = "Setting"
    }
}
