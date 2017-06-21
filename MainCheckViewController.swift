//
//  MainCheckViewController.swift
//  SplitCheck
//
//  Created by Luis Puentes on 6/20/17.
//  Copyright © 2017 LuisPuentes. All rights reserved.
//

import UIKit

class MainCheckViewController: UIViewController {
    
    var mainCheckController = MainCheckController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 96.0/255.0, green: 120.0/255.0, blue: 208.0/255.0, alpha: 1.0)
        setupLabels()
        setupTextFields()
        setupButtons()
        setupLabelConstraints()
        setupTextFieldConstraints()
        setupButtonConstraints()
        tapGesture(self)
    }
    
    // MARK: - Labels
    let mealTitleLabel = UILabel()
    let partySizeLabel = UILabel()
    let totalAmountLabel = UILabel()
    let splitAmountLabel = UILabel()
    let grandTotalAmountLabel = UILabel()
    
    // MARK: - Text Fields
    let partySizeTextField = UITextField()
    let totalAmountTextField = UITextField()
    
    // MARK: - Buttons
    let splitDatCheckButton = UIButton()
    let clearButton = UIButton()
    
    
    
    func setupLabels() {
        
        // Set Text
        mealTitleLabel.text = "Total Check"
        mealTitleLabel.textColor = .black
        mealTitleLabel.font = UIFont(name: "Palatino-BoldItalic", size: 50)
        mealTitleLabel.textAlignment = .center
        mealTitleLabel.adjustsFontSizeToFitWidth = true
        
        partySizeLabel.text = "Party Size:"
        partySizeLabel.textColor = .black
        partySizeLabel.adjustsFontSizeToFitWidth = true
        
        totalAmountLabel.text = "Total Amount:"
        totalAmountLabel.textColor = .black
        totalAmountLabel.adjustsFontSizeToFitWidth = true
        
        splitAmountLabel.text = "Split Amount:"
        splitAmountLabel.textColor = .black
        splitAmountLabel.adjustsFontSizeToFitWidth = true
        
        grandTotalAmountLabel.textColor = .white
        grandTotalAmountLabel.backgroundColor = .darkGray
        grandTotalAmountLabel.adjustsFontSizeToFitWidth = true
        grandTotalAmountLabel.layer.masksToBounds = true
        grandTotalAmountLabel.layer.cornerRadius = 5
        
        // Add buttons to the subview
        view.addSubview(mealTitleLabel)
        view.addSubview(partySizeLabel)
        view.addSubview(totalAmountLabel)
        view.addSubview(splitAmountLabel)
        view.addSubview(grandTotalAmountLabel)
    }
    
    func setupLabelConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        partySizeLabel.translatesAutoresizingMaskIntoConstraints = false
        totalAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        splitAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        grandTotalAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        mealTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width
        mealTitleLabel.widthAnchor.constraint(equalToConstant: 180).isActive = true
        mealTitleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        partySizeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        partySizeLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        totalAmountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        totalAmountLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        splitAmountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitAmountLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        grandTotalAmountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        grandTotalAmountLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        // Horizontal and Vertical
        mealTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mealTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        
        partySizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        partySizeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        totalAmountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        totalAmountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        
        splitAmountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        splitAmountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 115).isActive = true
        
        grandTotalAmountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        grandTotalAmountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 115).isActive = true
    }
    
    func setupTextFields() {
        // Set borders
        partySizeTextField.borderStyle = .roundedRect
        totalAmountTextField.borderStyle = .roundedRect
        
        // Add buttons to the subview
        view.addSubview(partySizeTextField)
        view.addSubview(totalAmountTextField)
    }
    
    func setupTextFieldConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        partySizeTextField.translatesAutoresizingMaskIntoConstraints = false
        totalAmountTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width
        partySizeTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        partySizeTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        totalAmountTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        totalAmountTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // Horizontal and Vertical
        partySizeTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        partySizeTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        totalAmountTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        totalAmountTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
    }
    
    func setupButtons() {
        
        // Set Color & Text
        splitDatCheckButton.setTitle("Split Check!", for: .normal)
        splitDatCheckButton.setTitleColor(.white, for: .normal)
        splitDatCheckButton.backgroundColor = .darkGray
        splitDatCheckButton.titleLabel?.textAlignment = .center
        splitDatCheckButton.titleLabel?.adjustsFontSizeToFitWidth = true
        splitDatCheckButton.layer.masksToBounds = true
        splitDatCheckButton.layer.cornerRadius = 5
        
        clearButton.setTitle("Clear", for: .normal)
        clearButton.setTitleColor(.white, for: .normal)
        clearButton.layer.borderColor = UIColor.white.cgColor
        clearButton.layer.borderWidth = 1
        clearButton.layer.masksToBounds = true
        clearButton.layer.cornerRadius = 5
        clearButton.titleLabel?.textAlignment = .center
        clearButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        // Add Targets - for splitting the check and clearing the text
        splitDatCheckButton.addTarget(self, action: #selector(splitDatCheckButtonTapped), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        
        // Add buttons to the subview
        view.addSubview(splitDatCheckButton)
        view.addSubview(clearButton)
    }
    
    func setupButtonConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        splitDatCheckButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width
        splitDatCheckButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitDatCheckButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        clearButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        // Horizontal and Vertical
        splitDatCheckButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        splitDatCheckButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        clearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -75).isActive = true
    }
    
    func splitDatCheckButtonTapped() {
        guard let partySize = partySizeTextField.text, !partySize.isEmpty else { return }
        guard let partySizeDouble = Double(partySize) else { return }
        guard let totalAmount = totalAmountTextField.text, !totalAmount.isEmpty else { return }
        guard let totalAmountDouble = Double(totalAmount) else { return }
        let mealCost = mainCheckController.totalCost(partySize: partySizeDouble, totalAmount: totalAmountDouble)
        
        grandTotalAmountLabel.text = "$\(mealCost)0"
    }
    
    func clearButtonTapped() {
        partySizeTextField.text = ""
        totalAmountTextField.text = ""
        grandTotalAmountLabel.text = ""
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        partySizeTextField.resignFirstResponder()
        totalAmountTextField.resignFirstResponder()
    }
}
