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
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
//        Initial set up
        tableView.delegate = self
        tableView.dataSource = self
        enableSwipe()
        checkDayChangedTimerSendAlert()
        overrideUserInterfaceStyle = .dark  
        
//        Get the last saved day number, and update screen
        viewDay = UserDefaults.standard.integer(forKey: "days")
        updateUI()
    }
    
    func checkDayChangedTimerSendAlert() {
        let _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if self.noFapBrain.checkDayChanged() {
                let alert = UIAlertController(title: "Congrats!🥳", message: "You made it to Day \(self.noFapBrain.getDayNumber())\nGo to latest day?", preferredStyle: .alert)
                
                UserDefaults.standard.set(self.noFapBrain.getDayNumber(), forKey: "days")

                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
                    action in
                        self.viewDay = self.noFapBrain.getDayNumber()
                        self.updateUI()
                }))
                alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

                self.present(alert, animated: true)
            }
        }
    }
    
    func enableSwipe() {
        let leftRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeMade(_:)))
        leftRecognizer.direction = .left
        let rightRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeMade(_:)))
        rightRecognizer.direction = .right
        self.view.addGestureRecognizer(leftRecognizer)
        self.view.addGestureRecognizer(rightRecognizer)
    }
    
    func updateUI() {
        dayLabel.text = "Day \(viewDay)"
        tableView.reloadData()
    }
    
    @IBAction func swipeMade(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            viewDay = noFapBrain.increaseViewDay(viewDay)
            updateUI()
        }
        if sender.direction == .right {
            viewDay = noFapBrain.decreaseViewDay(viewDay)
            updateUI()
        }
    }
    
    @IBAction func leftArrowPressed(_ sender: UIButton) {
        viewDay = noFapBrain.decreaseViewDay(viewDay)
        updateUI()
    }
    
    @IBAction func rightArrowPressed(_ sender: UIButton) {
        viewDay = noFapBrain.increaseViewDay(viewDay)
        updateUI()
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I've been tapped")
    }
}


extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noFapBrain.getNumberOfRows(viewDay: viewDay)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                
        let dayData = noFapBrain.getDayData(viewDay: viewDay, row: indexPath.row)
        cell.textLabel?.text = dayData.header
        cell.detailTextLabel?.text = dayData.body
        
        return cell
    }
}
    


