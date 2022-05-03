//
//  TestViewController.swift
//  SecondsConvert
//
//  Created by Ованес Захарян on 01.05.2022.
//

import UIKit

class TestViewController: UIViewController, UITextFieldDelegate {

    var test: Double = 0.0
    
    @IBOutlet weak var testTextField: UITextField!
    
    
    
    @IBAction func testAction(_ sender: UITextField) {
        test = Double(testTextField.text!)!
        print(test)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
