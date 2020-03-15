//
//  ViewController.swift
//  0315datePickerTest
//
//  Created by 蔡家雯 on 2020/3/15.
//  Copyright © 2020 lesley tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setDate: UILabel!
    @IBOutlet weak var todayLabel: UILabel!
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minsLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //開始日期
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        
        let dateString = "2020/07/24 20:00"
        let date = dateFormatter.date(from: dateString)
        setDate.text = dateString
        
        //今天日期
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let todaydateString = formatter.string(from: now)
        todayLabel.text = todaydateString
        
        //倒數
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            (_) in
            let interval = Int(date!.timeIntervalSinceNow)
            let sec = interval % 60
            let min = interval/60 % 60
            let hour = interval/60/60 % 24
            let day = interval/60/60/24
            
            //倒數數字放入label
            self.dayLabel.text = "\(day)"
            self.hoursLabel.text = "\(hour)"
            self.minsLabel.text = "\(min)"
            self.secondLabel.text = "\(sec)"
            
        
        }
    


}

}
