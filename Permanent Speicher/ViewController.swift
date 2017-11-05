//
//  ViewController.swift
//  Permanent Speicher
//
//  Created by MacMini on 05.11.17.
//  Copyright © 2017 MacMini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBAction func speichernPressed(_ sender: Any) {
        UserDefaults.standard.set(textFieldOutlet.text, forKey: "number")
    }
    @IBOutlet weak var memoryOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String {
            memoryOutlet.text = number
        } else {
            memoryOutlet.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

