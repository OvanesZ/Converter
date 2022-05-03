//
//  ConvertViewController.swift
//  SecondsConvert
//
//  Created by Ованес Захарян on 01.05.2022.
//

import UIKit

class ConvertViewController: UIViewController {
    
    var secondsUser: Int = 0
    var gradusUser: Double = 0.0

    @IBOutlet weak var settingControl: UISegmentedControl!
    @IBOutlet weak var secondsTextField: UITextField!
    
   
   
    @IBAction func takeSeconds(_ sender: UITextField) {
        secondsUser = Int(secondsTextField.text!)!
        print(secondsUser)
    }
    
    
    
    
    @IBAction func convertButton(_ sender: Any) {
        
        
        switch settingControl.selectedSegmentIndex {
        case 0:
            print("seconds segment")
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
        case 1:
            print("gradus segment")
            
            gradusUser = Double(secondsTextField.text!)!
            
            
            
            func ch(_ value: Double) {
                let gradus = floor(value)
                
                let decimalValue = value.truncatingRemainder(dividingBy: 1)

                let minutesValue = (decimalValue * 60).roundToDecimal(5)
                
                let minutes = floor(minutesValue)

                let secondsValue = minutesValue.truncatingRemainder(dividingBy: 1)

                let seconds = (secondsValue * 60).roundToDecimal(0)
                
                print("gradus: \(gradus), minutes \(minutes), seconds \(seconds) ")
                
                hoursLabel.text = String("Градусы: \(gradus)")
                minutesLabel.text = String("Минуты: \(minutes)")
                secondsLabel.text = String("Секунды: \(seconds)")
               
            }
            ch(gradusUser)
            
        default:
            return
        }
        
        
        
       
        
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


extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}
