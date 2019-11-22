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
    
    var crayon: Crayon!
    var numbers = [CGFloat]()
    
    var defaultRed = CGFloat()
    var defaultBlue = CGFloat()
    var defaultGreen = CGFloat()
    var defaultAlpha = CGFloat()
        
    private var currentRed: CGFloat = 0 {
      didSet {
        redLabel.text = "Red \(String(format: "%.1f", currentRed))"
        defaultRed = currentRed
        redSlider.value = Float(currentRed)
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: currentAlpha)
      }
    }
    
    private var currentBlue: CGFloat = 0 {
         didSet {
           blueLabel.text = "Blue \(String(format: "%.1f", currentBlue))"
           defaultBlue = currentBlue
           blueSlider.value = Float(currentBlue)
            view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: currentAlpha)
         }
       }
    
    private var currentGreen: CGFloat = 0 {
      didSet {
        greenLabel.text = "Green \(String(format: "%.1f", currentGreen))"
        defaultGreen = currentGreen
        greenSlider.value = Float(currentGreen)
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: currentAlpha)
      }
    }
    
    private var currentAlpha: CGFloat = 1 {
      didSet {
        alphaText.text = "Alpha \(String(format: "%.1f", currentAlpha))"
        defaultAlpha = currentAlpha
        alphaStepper.value = Double(currentAlpha)
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: currentAlpha)
      }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureRed()
        configureBlue()
        configureGreen()
        configureAlpha()
        resetButton.tintColor = UIColor.white
        updateButton.tintColor = UIColor.white
        colorSelected.text = "\(crayon.name)"
        colorSelected.textColor = UIColor.white
        redLabel.textColor = UIColor.white
        blueLabel.textColor = UIColor.white
        greenLabel.textColor = UIColor.white
        colorSelected.textColor = UIColor.white
        alphaText.textColor = UIColor.white
        alphaText.text = "Alpha 1.0"
        redLabel.text = "Red \(String(format: "%.1f", CGFloat(crayon.red / 255)))"
        greenLabel.text = "Green \(String(format: "%.1f", CGFloat(crayon.green / 255)))"
        blueLabel.text = "Blue \(String(format: "%.1f", CGFloat(crayon.blue / 255)))"
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(crayon.red / 255)), green: (CGFloat(crayon.green / 255)), blue: (CGFloat(crayon.blue / 255)), alpha: currentAlpha)
        title = crayon.name
    }
    
    func configureRed() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(crayon.red / 255)
    }
    
    func configureGreen () {
        greenSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        greenSlider.value = Float(crayon.green / 255)
    }

    func configureBlue() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(crayon.blue / 255)
    }
    
    func configureAlpha() {
           alphaStepper.minimumValue = 0.0
           alphaStepper.maximumValue = 1.0
           alphaStepper.stepValue = 0.1
           alphaStepper.value = 1.0
    }
    
    
    @IBAction func redChanged(_ sender: UISlider) {
        currentRed = CGFloat((sender.value))
    }
    
    
    @IBAction func blueChanged(_ sender: UISlider) {
        currentBlue = CGFloat(sender.value)
    }
    
    
    @IBAction func greenChanged(_ sender: UISlider) {
        currentGreen = CGFloat(sender.value)
    }
    
    
    @IBAction func alphaChanged(_ sender: UIStepper) {
        currentAlpha = CGFloat(sender.value)
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(crayon.red / 255)), green: (CGFloat(crayon.green / 255)), blue: (CGFloat(crayon.blue / 255)), alpha: 1.0)
        redSlider.value = Float(crayon.red / 255)
        greenSlider.value = Float(crayon.green / 255)
        blueSlider.value = Float(crayon.blue / 255)
        currentAlpha = 1.0
        alphaStepper.value = 1.0
        alphaText.text = "Alpha 1.0"
        redLabel.text = "Red \(String(format: "%.1f", CGFloat(crayon.red / 255)))"
        greenLabel.text = "Green \(String(format: "%.1f", CGFloat(crayon.green / 255)))"
        blueLabel.text = "Blue \(String(format: "%.1f", CGFloat(crayon.blue / 255)))"
    }
    
    
}
