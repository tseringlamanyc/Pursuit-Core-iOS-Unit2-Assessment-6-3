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
    
    var defaultRed: CGFloat = 0.5
    var defaultBlue: CGFloat = 0.5
    var defaultGreen: CGFloat = 0.5
    
    private var currentRed: CGFloat = 0.5 {
      didSet {
        redLabel.text = "Red \(String(format: "%.1f", currentRed))"
        defaultRed = currentRed
        redSlider.value = Float(currentRed)
      }
    }
    
    private var currentBlue: CGFloat = 0.5 {
         didSet {
           blueLabel.text = "Blue \(String(format: "%.1f", currentBlue))"
           defaultBlue = currentBlue
           blueSlider.value = Float(currentBlue)
         }
       }
    
    private var currentGreen: CGFloat = 0.5 {
      didSet {
        greenLabel.text = "Green \(String(format: "%.1f", currentGreen))"
        defaultGreen = currentGreen
        greenSlider.value = Float(currentGreen)
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func configureRed() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(currentRed)
    }
    
    func configureGreen () {
        greenSlider.maximumValue = 0.0
        greenSlider.minimumValue = 1.0
        greenSlider.value = Float(currentBlue)
    }

    func configureBlue() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(currentGreen)
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
        
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
    }
    
    
}
