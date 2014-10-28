//
//  ViewController.swift
//  F2Demo
//
//  Created by Bradley Johnson on 10/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func didPressButton(sender: AnyObject) {
        self.view.backgroundColor = UIColor.yellowColor()
    }
}

