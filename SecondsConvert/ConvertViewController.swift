//
//  ConvertViewController.swift
//  SecondsConvert
//
//  Created by Ованес Захарян on 01.05.2022.
//

import UIKit

class ConvertViewController: UIViewController {
    
    var secondsUser: Int = 0

    @IBOutlet weak var secondsTextField: UITextField!
    
   
   
    @IBAction func takeSeconds(_ sender: UITextField) {
        secondsUser = Int(secondsTextField.text!)!
        print(secondsUser)
    }
    
    
    
    
    @IBAction func convertButton(_ sender: Any) {
        
        secondsUser = Int(secondsTextField.text!)!
        hoursLabel.text = secondsTextField.text
        
        func secondToHours(second: Int) -> (Int, Int, Int) {
            return (second / 3600, (second % 3600) / 60, (second % 3600) % 60)
        }
        
        func printSecondToHours(seconds: Int) -> () {
            let (h, m, s) = secondToHours(second: seconds)
            hoursLabel.text = String("Часы: \(h)")
            minutesLabel.text = String("Минуты: \(m)")
            secondsLabel.text = String("Секунды: \(s)")
            
              print ("\(h) Hours, \(m) Minutes, \(s) Seconds")
        }
        
        
        printSecondToHours(seconds: secondsUser)
        
    }
    
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondsTextField.clearButtonMode = .whileEditing    // кнопка очистить (крестик справа)
        secondsTextField.placeholder = "Введите кол-во секунд" // надпись (подсказка)
        
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
