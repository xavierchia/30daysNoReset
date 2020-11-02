//
//  ViewController.swift
//  100daysNoFap
//
//  Created by xavier chia on 30/10/20.
//

import UIKit

class StartViewController: UIViewController {
    
    var days = 0

    @IBOutlet weak var daysLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func daysSliderChange(_ sender: UISlider) {
        days = Int(sender.value)
        var affix = "days"
        if days == 1 {
            affix = "day"
        }
        daysLabel.text = "\(String(days)) \(affix)"
    }
        
    @IBAction func goButtonPressed(_ sender: UIButton) {
        // Save the starting days and the starting date to userDefault
        let defaults = UserDefaults.standard
        defaults.set(days, forKey: "startingDays")
        defaults.set(Date(), forKey: "startingDate")
        
        // Once onboarding is done, change rootViewController to mainViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = storyboard.instantiateViewController(identifier: "MainViewController")
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainViewController)
        
    }
}

