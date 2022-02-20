//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Carlos Carmo on 14/02/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var themeSwitch: UISwitch!
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        if let isNight = defaults.value(forKey: "isNight") {
            if isNight as! Bool {
                switchToNight()
            }
        }
    }

    @IBAction func switchFlipped(sender: Any) {
        if themeSwitch.isOn {
            switchToNight()
            defaults.set(true, forKey: "isNight")
        } else {
            switchToDay()
            defaults.set(false, forKey: "isNight")
        }
    }
    
    func switchToNight() {
        themeSwitch.setOn(true, animated: false)
        overrideUserInterfaceStyle = .dark
    }
    
    func switchToDay() {
        themeSwitch.setOn(false, animated: false)
        overrideUserInterfaceStyle = .light
    }
}

