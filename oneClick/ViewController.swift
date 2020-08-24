//
//  ViewController.swift
//  oneClick
//
//  Created by Yifan Ai on 23/8/20.
//  Copyright © 2020 Yifan Ai. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let text = UserDefaults.standard.string(forKey: "text")
        textField.stringValue = text ?? ""
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func saveText(_ sender: Any) {
        let text = textField.stringValue
        UserDefaults.standard.set(text, forKey: "text")
    }

}

