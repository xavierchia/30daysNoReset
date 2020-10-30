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
        defaults.set(days, forKey: "startingDays")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = storyboard.instantiateViewController(identifier: "MainViewController")
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainViewController)
        
        self.performSegue(withIdentifier: "ShowMainViewController", sender: self)
    }
}

