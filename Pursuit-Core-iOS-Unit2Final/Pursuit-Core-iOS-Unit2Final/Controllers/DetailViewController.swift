//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Tsering Lama on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var colorSelected: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var alphaText: UILabel!
    @IBOutlet weak var updateButton: UIButton!
    
    var data: Crayon!
    var numbers = [CGFloat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSetting()
        configureRed()
        configureBlue()
        configureGreen()
        resetButton.tintColor = UIColor.white
        updateButton.tintColor = UIColor.white
        colorSelected.text = "\(data.name)"
        colorSelected.textColor = UIColor.white
        redLabel.textColor = UIColor.white
        blueLabel.textColor = UIColor.white
        greenLabel.textColor = UIColor.white
        colorSelected.textColor = UIColor.white
        alphaText.textColor = UIColor.white
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(data.red / 255)), green: (CGFloat(data.green / 255)), blue: (CGFloat(data.blue / 255)), alpha: 1.0)
    }
    
    func currentSetting () {
        numbers.append(CGFloat(data.red / 255))
        numbers.append(CGFloat(data.green / 255))
        numbers.append(CGFloat(data.blue / 255))
        redLabel.text = "Red \(String(format: "%.1f", numbers[0]))"
        blueLabel.text = "Blue \(String(format: "%.1f", numbers[2]))"
        greenLabel.text = "Green \(String(format: "%.1f", numbers[1]))"
    }
    
    func configureRed() {
           redSlider.minimumValue = 0.0
           redSlider.maximumValue = 1.0
           redSlider.value = Float(numbers[0])
       }
    
    func configureBlue() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(numbers[2])
    }
    
    func configureGreen () {
        greenSlider.maximumValue = 0.0
        greenSlider.minimumValue = 1.0
        greenSlider.value = Float(numbers[1])
    }
    
    @IBAction func redChanged(_ sender: UISlider) {
        numbers[0] = CGFloat(sender.value)
    }
    
    
    @IBAction func blueChanged(_ sender: UISlider) {
        numbers[2] = CGFloat(sender.value)
    }
    
    
    @IBAction func greenChanged(_ sender: UISlider) {
        numbers[1] = CGFloat(sender.value)
    }
    
    
    @IBAction func alphaChanged(_ sender: UIStepper) {
        
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
    }
    
    
}
