//
//  ViewController.swift
//  introduce
//
//  Created by Zhijie Yang on 2022/12/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petNumber: UILabel!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var petSwitch: UISwitch!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegementControl: UISegmentedControl!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petNumber.text = "\(Int(sender.value))"
    }

    @IBAction func IntroduceSelf(_ sender: UIButton) {
        let year = yearSegementControl.titleForSegment(at: yearSegementControl.selectedSegmentIndex)
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!).I am currently in my \(year!) year and I own \(petNumber.text!) dogs.It is \(petSwitch.isOn) that I want more pets."
                
                print(introduction)
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

