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
    
    var data: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSelected.text = "\(data.name)"
        colorSelected.textColor = UIColor.white
        redLabel.textColor = UIColor.white
        blueLabel.textColor = UIColor.white
        greenLabel.textColor = UIColor.white
        colorSelected.textColor = UIColor.white
        alphaText.textColor = UIColor.white
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(data.red / 255)), green: (CGFloat(data.green / 255)), blue: (CGFloat(data.blue / 255)), alpha: 1.0)
    }
    


}
