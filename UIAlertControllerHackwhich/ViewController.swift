//
//  ViewController.swift
//  UIAlertControllerHackwhich
//
//  Created by Lin LaMonte on 3/28/22.
//
// i fell asleep at 4 am 👍

import UIKit

class ViewController: UIViewController {
    
//MARK: declare variables, connect outlets(public variables)
    
//MARK: viewDidLoad function puts item inside the function immediately on the home screen.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
//MARK: action functions and other functions go here
    
    @IBAction func onAddButtonTapped(_ sender: Any)
    {

        let alert = UIAlertController(title: "What is Your Name?", message: nil, preferredStyle: .alert)
        
        self.present(alert, animated: true, completion: nil)
        
        alert.addTextField(configurationHandler: {textField in textField.placeholder = "First Name"})
        alert.addTextField(configurationHandler: {textField in textField.placeholder = "Last Name"})
        
        
        
        
        let ok = UIAlertAction(title: "OK", style: .default) {action in print(alert.textFields?.first)
            print(alert.textFields?.last)
            
        }
        alert.addAction(ok)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancel)
    }
    
    

}

