//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import UIKit
import AppCenterCrashes

class ViewController: UIViewController {

    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
        Crashes.generateTestCrash()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "crashed", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool!", style: .default, handler: nil))
            present(alert, animated: true)
        }
    }
    
}

