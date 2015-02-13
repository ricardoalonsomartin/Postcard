//
//  ViewController.swift
//  noapp-desktopImage
//
//  Created by Ricardo Alonso Martín on 10/2/15.
//  Copyright (c) 2015 Ricardo Alonso Martín. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameAndMessageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        var aux =  enterNameTextField.text;
            messageLabel.text = enterMessageTextField.text;
            messageLabel.hidden = false;
            messageLabel.textColor = UIColor.redColor();
        nameLabel.text = enterNameTextField.text;
        nameLabel.hidden = false;
        nameLabel.textColor = UIColor.yellowColor();
        
            enterMessageTextField.text = "";
            enterMessageTextField.resignFirstResponder();
            enterNameTextField.text = "";
            enterNameTextField.resignFirstResponder();

            mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    @IBAction func submitButtonPressed(sender: UIButton) {
        var aux:String = "Hi \(enterNameTextField.text)!\n \(enterMessageTextField.text)";
        
        nameAndMessageLabel.hidden = false;
        nameAndMessageLabel.text = aux;

        enterNameTextField.text = "";
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        enterNameTextField.resignFirstResponder();
        
        submitButton.setTitle("Submited", forState: UIControlState.Normal);
    }
}

