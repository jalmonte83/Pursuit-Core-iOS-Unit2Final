//
//  CrayonDetailController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jeffrey Almonte on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailController: UIViewController {

    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var redValue: UISlider!
    @IBOutlet weak var blueValue: UISlider!
    @IBOutlet weak var greenValue: UISlider!
    @IBOutlet weak var backColor: UIView!
    
    @IBOutlet weak var restButton: UIButton!
    var currentRedValue: Double = 1.0
    var currentBlueValue: Double = 1.0
    var currentGreenValue: Double = 1.0
    
    
    public var crayon: Crayon!
    override func viewDidLoad() {
        super.viewDidLoad()
        Crayon.allTheCrayons
        upDateCrayonUI()
    }
    
    @IBAction func redValueChanged(_ sender: UISlider) {
        print("red slider")
    }
    
    @IBAction func blueValueChanged(_ sender: UISlider) {
    }
    
    @IBAction func greenValueChanged(_ sender: UISlider) {
    }
    @IBOutlet weak var alphaClicked: UILabel!
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
    
    
        private func upDateCrayonUI() {
//            guard let crayon = crayon else { fatalError("crayon is nil")
            }
           // crayonNameLabel.text = crayon.name
            
    



    
    

}
