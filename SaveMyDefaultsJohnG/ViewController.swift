//
//  ViewController.swift
//  SaveMyDefaultsJohnG
//
//  Created by John Grasser on 10/7/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBAction func mySaveButton(_ sender: Any) {
        
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
        
    }
    
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
                 }
    
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    
    
    @IBOutlet var mySerialNumber: UITextField!
    
    @IBOutlet var mySlider: UISlider!
    
    
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

