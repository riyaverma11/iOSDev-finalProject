//
//  CountdownViewController.swift
//  ios101-finalProject
//
//  Created by Riya Verma on 4/23/24.
//

import UIKit

class CountdownViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var overlayView: UIView!
    
    var timer: Timer?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        startCountdownTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        stopCountdownTimer()
    }
    
    func startCountdownTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdownLabel), userInfo: nil, repeats: true)
    }
    
    func stopCountdownTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func updateCountdownLabel() {
        let countdownComponents = getRemainingTimeComponents()
        countdownLabel.text = """
            \(countdownComponents.month) Months
            \(countdownComponents.day) Days
            \(countdownComponents.hour) Hours
            \(countdownComponents.minute) Minutes
            \(countdownComponents.second) Seconds
        """
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // trying to make the background image a little bit transparent so that i can read the options
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        backgroundImage.addSubview(overlayView)
        
        // Do any additional setup after loading the view.
    }
    
    func getRemainingTimeComponents() -> (month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        let tourDateComponents = DateComponents(year: 2024, month: 11, day: 1, hour: 23, minute: 59, second: 59)
        let currentDate = Date()
        if let tourDate = Calendar.current.nextDate(after: currentDate, matching: tourDateComponents, matchingPolicy: .strict) {
            let remainingTime = Calendar.current.dateComponents([.month, .day, .hour, .minute, .second], from: currentDate, to: tourDate)
            return (remainingTime.month ?? 0, remainingTime.day ?? 0, remainingTime.hour ?? 0, remainingTime.minute ?? 0, remainingTime.second ?? 0)
        }
        return (0, 0, 0, 0, 0)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
