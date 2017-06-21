//
//  TipViewController.swift
//  SplitCheck
//
//  Created by Luis Puentes on 6/20/17.
//  Copyright © 2017 LuisPuentes. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    var tipAmountController = TipController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 96.0/255.0, green: 120.0/255.0, blue: 208.0/255.0, alpha: 1.0)
        setupLabels()
        setupLabelConstraints()
        setupTextFields()
        setupTextFieldConstraints()
        setupButtons()
        setupButtonConstraints()
        tapGesture(self)
    }
    
    // Labels
    let tipTitleLabel = UILabel()
    let totalAmountLabel = UILabel()
    let percentageLabel = UILabel()
    let partySizeLabel = UILabel()
    let tipTotalLabel = UILabel()
    let splitEvenlyLabel = UILabel()
    let lowerTipTotalLabel = UILabel()
    let lowerSplitEvenlyLabel = UILabel()
    
    // Text Fields
    let totalAmountTextField = UITextField()
    let percentageTextField = UITextField()
    let partySizeTextField = UITextField()
    
    // Buttons
    let splitDatTipButton = UIButton()
    let clearButton = UIButton()
    
    func setupLabels() {
        tipTitleLabel.text = "Tip"
        tipTitleLabel.textColor = .black
        tipTitleLabel.font = UIFont(name: "Palatino-BoldItalic", size: 35)
        tipTitleLabel.textAlignment = .center
        tipTitleLabel.adjustsFontSizeToFitWidth = true
        
        totalAmountLabel.text = "Total Amount:"
        totalAmountLabel.textColor = .black
        totalAmountLabel.adjustsFontSizeToFitWidth = true
        
        percentageLabel.text = "Percentage:"
        percentageLabel.textColor = .black
        percentageLabel.adjustsFontSizeToFitWidth = true
        
        partySizeLabel.text = "Party Size:"
        partySizeLabel.textColor = .black
        partySizeLabel.adjustsFontSizeToFitWidth = true
        
        tipTotalLabel.text = "Tip Total"
        tipTotalLabel.textColor = .black
        tipTotalLabel.textAlignment = .center
        tipTotalLabel.adjustsFontSizeToFitWidth = true
        
        splitEvenlyLabel.text = "Split Evenly"
        splitEvenlyLabel.textColor = .black
        splitEvenlyLabel.textAlignment = .center
        splitEvenlyLabel.adjustsFontSizeToFitWidth = true
        
        lowerTipTotalLabel.textColor = .white
        lowerTipTotalLabel.backgroundColor = .darkGray
        lowerTipTotalLabel.adjustsFontSizeToFitWidth = true
        lowerTipTotalLabel.layer.masksToBounds = true
        lowerTipTotalLabel.layer.cornerRadius = 5
        
        lowerSplitEvenlyLabel.textColor = .white
        lowerSplitEvenlyLabel.backgroundColor = .darkGray
        lowerSplitEvenlyLabel.adjustsFontSizeToFitWidth = true
        lowerSplitEvenlyLabel.layer.masksToBounds = true
        lowerSplitEvenlyLabel.layer.cornerRadius = 5
        
        // Add labels to subview
        view.addSubview(tipTitleLabel)
        view.addSubview(totalAmountLabel)
        view.addSubview(percentageLabel)
        view.addSubview(partySizeLabel)
        view.addSubview(tipTotalLabel)
        view.addSubview(splitEvenlyLabel)
        view.addSubview(lowerTipTotalLabel)
        view.addSubview(lowerSplitEvenlyLabel)
    }
    
    func setupLabelConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        tipTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        totalAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        percentageLabel.translatesAutoresizingMaskIntoConstraints = false
        partySizeLabel.translatesAutoresizingMaskIntoConstraints = false
        tipTotalLabel.translatesAutoresizingMaskIntoConstraints = false
        splitEvenlyLabel.translatesAutoresizingMaskIntoConstraints = false
        lowerTipTotalLabel.translatesAutoresizingMaskIntoConstraints = false
        lowerSplitEvenlyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and width
        tipTitleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        tipTitleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        totalAmountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        totalAmountLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        percentageLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        percentageLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        partySizeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        partySizeLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        tipTotalLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        tipTotalLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        splitEvenlyLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitEvenlyLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        lowerTipTotalLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        lowerTipTotalLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        lowerSplitEvenlyLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        lowerSplitEvenlyLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        // Horizontal and Vertical
        tipTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tipTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        
        totalAmountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        totalAmountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        percentageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        percentageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -125).isActive = true
        
        partySizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        partySizeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
        
        tipTotalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        tipTotalLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 115).isActive = true
        
        splitEvenlyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        splitEvenlyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 115).isActive = true
        
        lowerTipTotalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -75).isActive = true
        lowerTipTotalLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 145).isActive = true
        
        lowerSplitEvenlyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        lowerSplitEvenlyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 145).isActive = true
    }
    
    func setupTextFields() {
        totalAmountTextField.borderStyle = .roundedRect
        percentageTextField.borderStyle = .roundedRect
        partySizeTextField.borderStyle = .roundedRect
        
        // Add text fields to subview
        view.addSubview(totalAmountTextField)
        view.addSubview(percentageTextField)
        view.addSubview(partySizeTextField)
    }
    
    func setupTextFieldConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        totalAmountTextField.translatesAutoresizingMaskIntoConstraints = false
        percentageTextField.translatesAutoresizingMaskIntoConstraints = false
        partySizeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width
        totalAmountTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        totalAmountTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        percentageTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        percentageTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        partySizeTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        partySizeTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // Horizontal and Vertical
        totalAmountTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        totalAmountTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        percentageTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        percentageTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -125).isActive = true
        
        partySizeTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        partySizeTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
    }
    
    func setupButtons() {
        splitDatTipButton.setTitle("Split Tip!", for: .normal)
        splitDatTipButton.setTitleColor(.white, for: .normal)
        splitDatTipButton.backgroundColor = .darkGray
        splitDatTipButton.titleLabel?.textAlignment = .center
        splitDatTipButton.titleLabel?.adjustsFontSizeToFitWidth = true
        splitDatTipButton.layer.masksToBounds = true
        splitDatTipButton.layer.cornerRadius = 5
        
        clearButton.setTitle("Clear", for: .normal)
        clearButton.setTitleColor(.white, for: .normal)
        clearButton.layer.borderColor = UIColor.white.cgColor
        clearButton.layer.borderWidth = 1
        clearButton.layer.masksToBounds = true
        clearButton.layer.cornerRadius = 5
        clearButton.titleLabel?.textAlignment = .center
        clearButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        // Add Targets - for splitting the check and clearing the text
        splitDatTipButton.addTarget(self, action: #selector(splitDatTipButtonTapped), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        
        // Add buttons to the subview
        view.addSubview(splitDatTipButton)
        view.addSubview(clearButton)
    }
    
    func setupButtonConstraints() {
        // Translates AutoResizingMaskIntoConstraints
        splitDatTipButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width
        splitDatTipButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitDatTipButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        clearButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        // Horizontal and Vertical
        splitDatTipButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        splitDatTipButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        clearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -75).isActive = true
    }
    
    func splitDatTipButtonTapped() {
        guard let totalAmount = totalAmountTextField.text, !totalAmount.isEmpty else { return }
        guard let totalAmountDouble = Double(totalAmount) else { return }
        guard let percentage = percentageTextField.text, !percentage.isEmpty else { return }
        guard let percentageDouble = Double(percentage) else { return }
        guard let partySize = partySizeTextField.text else { return }
        guard let partySizeDouble = Double(partySize) else { return }
        
        let tipTotal = tipAmountController.tipTotal(totalAmount: totalAmountDouble, percentage: percentageDouble)
        
        let tipSplitEvenly = tipAmountController.splitEvenly(tipTotal: tipTotal, partySize: partySizeDouble)
        
        lowerTipTotalLabel.text = "$\(tipTotal)0"
        lowerSplitEvenlyLabel.text = "$\(tipSplitEvenly)0"
    }
    
    func clearButtonTapped() {
        totalAmountTextField.text = ""
        percentageTextField.text = ""
        partySizeTextField.text = ""
        lowerTipTotalLabel.text = ""
        lowerSplitEvenlyLabel.text = ""
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        totalAmountTextField.resignFirstResponder()
        percentageTextField.resignFirstResponder()
        partySizeTextField.resignFirstResponder()
    }
}
