//
//  ViewController.swift
//  Douban@OSX
//
//  Created by 郑虎 on 2015-09-26.
//  Copyright © 2015年 Axurez. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var mainButton: NSButton!
    @IBOutlet weak var mainLabel: NSTextField!
    
    @IBAction func push(sender: AnyObject) {
        print("Hi")
        mainLabel.stringValue = "I am fucked."
        
        RestApiManager.sharedInstance.getRandomUser{json in
            print(json)}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    


}

