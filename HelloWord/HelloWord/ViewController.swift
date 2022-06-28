//
//  ViewController.swift
//  HelloWord
//
//  Created by Caio Thomaz Nogueira  on 21/06/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var helloWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        helloWordLabel.text = "hello Word"
        helloWordLabel.textColor = UIColor.blue
        
        textField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.helloWordLabel.text = self.textField.text
        
    }
    
}
