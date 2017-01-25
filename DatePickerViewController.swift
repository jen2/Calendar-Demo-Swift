//
//  DatePickerViewController.swift
//  Calendar-Demo-Swift
//
//  Created by Jennifer A Sipila on 1/24/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

import UIKit


class DatePickerViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!

    var selectedDate: Date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        datePicker.maximumDate = date
        datePicker.minimumDate = startDateSetUp()
    }

//    MARK: - Date Picker Delegate

    func startDateSetUp() -> Date {
        let calendar = Calendar.current
        var components: DateComponents = DateComponents()
        
        components.year = 2012
        components.month = 8
        components.day = 6
        components.hour = 1
        components.minute = 32
        components.second = 0

        let startDate: Date = calendar.date(from: components)!
        return (startDate)
    }
    
    @IBAction func datePickerChangeDidEnd(_ sender: UIDatePicker) {
        selectedDate = datePicker.date
        
    }
    
//    MARK: - Navigation
    
    @IBAction func goButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDate", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destinationVC = segue.destinationViewController as? CalViewController {
//            destinationVC.dateFromPicker = selectedDate
//        }
    }


}
