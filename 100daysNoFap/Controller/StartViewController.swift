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
        let defaults = UserDefaults.standard
        defaults.set(days, forKey:"startingDays")
        
        self.performSegue(withIdentifier: "ShowMainViewController", sender: self)
    }
}

