//
//  MainViewController.swift
//  100daysNoFap
//
//  Created by xavier chia on 30/10/20.
//

import UIKit

class MainViewController: UIViewController {
    
    var noFapBrain = NoFapBrain()
    var viewDay = 0
    
    @IBOutlet weak var dayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewDay = noFapBrain.getDayNumber()
        dayLabel.text = "Day \(viewDay)"

    }
    @IBAction func leftArrowPressed(_ sender: UIButton) {
        viewDay = noFapBrain.decreaseViewDay(viewDay)
        dayLabel.text = "Day \(viewDay)"
    }
    
    @IBAction func rightArrowPressed(_ sender: UIButton) {
        viewDay = noFapBrain.increaseViewDay(viewDay)
        dayLabel.text = "Day \(viewDay)"
    }
}
