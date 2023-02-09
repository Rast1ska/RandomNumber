//
//  ViewController.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 08.02.2023.
//

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        setupNavigationController()
        
    }
    
    private func setupNavigationController() {
        title = "Random Number"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}

