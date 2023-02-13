//
//  ViewController.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 08.02.2023.
//

import UIKit

protocol DetailViewControllerDelegate {
    func setNewValue(randomNumber: RandomNumber)
}

final class MainViewController: UIViewController {
    
    private var randomNumber = RandomNumber(minNumber: 1, maxNumber: 100)
    
    private let getRandomNumberButton = RandomButtonNumber(textTitle: "Get random number!")
    
    private let randomNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 75)
        return label
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
        targetButton()
    }
    
    private func targetButton() {
        getRandomNumberButton.addTarget(self, action: #selector(getRandomNumber), for: .touchUpInside)
    }
    
    private func setupNavigationController() {
        title = "Random Number"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(goSetting))
        navigationController?.navigationBar.tintColor = .white
    }
    
    @objc func goSetting() {
        let detailViewController = DetailViewController()
<<<<<<< HEAD
        detailViewController.randomNumber = randomNumber
        detailViewController.delegate = self
=======
>>>>>>> parent of 178d38c (setup send info in another vc)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    @objc func getRandomNumber() {
        randomNumberLabel.text = "\(randomNumber.getRandomNumber)"
    }
    private func addSubview() {
        view.addSubview(getRandomNumberButton)
        view.addSubview(randomNumberLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            randomNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomNumberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            getRandomNumberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getRandomNumberButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            getRandomNumberButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
}

extension MainViewController: DetailViewControllerDelegate {
    func setNewValue(randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
    }
}

