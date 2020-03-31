//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by MAKAN on 31.03.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name:  \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday : \(newBirthday)"
        }
        
        
    }

    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
        UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil{
        UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = " Birthday: "
        }
        
        
    }
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextFiled.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextFiled.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
    }
    
}

