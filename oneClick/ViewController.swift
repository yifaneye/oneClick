//
//  ViewController.swift
//  oneClick
//
//  Created by Yifan Ai on 23/8/20.
//  Copyright © 2020 Yifan Ai. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var textField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let text = UserDefaults.standard.string(forKey: "text")
        textField.stringValue = text ?? ""
        textField.delegate = self
    }
    
    func controlTextDidChange(_ obj: Notification) {
        let textField = obj.object as! NSTextField
        UserDefaults.standard.set(textField.stringValue, forKey: "text")
    }

}

