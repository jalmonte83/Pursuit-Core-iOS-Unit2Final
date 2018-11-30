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
    
    
    
    public var crayon: Crayon!
    override func viewDidLoad() {
        super.viewDidLoad()
        Crayon.allTheCrayons
        upDateCrayonUI()
    }
        private func upDateCrayonUI() {
//            guard let crayon = crayon else { fatalError("crayon is nil")
            }
           // crayonNameLabel.text = crayon.name
            //redValue. = redValue.
    



    }

