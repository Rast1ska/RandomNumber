//
//  DetailViewController.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 13.02.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var randomNumber: RandomNumber!
    var delegate: DetailViewControllerDelegate!
    
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
        config(randomNumber: randomNumber)
        targetButton()
        minTextField.delegate = self
        maxTextField.delegate = self
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func targetButton() {
        saveButton.addTarget(self, action: #selector(sendInfo), for: .touchUpInside)
    }
    
    @objc func sendInfo() {
        view.endEditing(true)
        delegate.setNewValue(randomNumber: randomNumber)
        navigationController?.popViewController(animated: true)
    }
    
    private func config(randomNumber: RandomNumber?) {
        guard let randomNumber = randomNumber else { return }
        minTextField.text = "\(randomNumber.minNumber)"
        maxTextField.text = "\(randomNumber.maxNumber)"
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

extension DetailViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let numberValue = Int(newValue) else { return }
        
        if textField == minTextField {
            randomNumber?.minNumber = numberValue
        } else if textField == maxTextField {
            randomNumber?.maxNumber = numberValue
        }
    }
}

