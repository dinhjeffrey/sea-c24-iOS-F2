//
//  ViewController.swift
//  F2ClassRoster
//
//  Created by Bradley Johnson on 10/29/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
        
        let myFrame = CGRect(x: 200, y: 300, width: 100, height: 1000)
        var redBox = UIView(frame: myFrame)
        //let redBox = UIColor.redColor()
        redBox.backgroundColor = UIColor.redColor()
        //use addSubview to add a view
        self.view.addSubview(redBox)
        
        var yellowBox = UIView(frame: CGRect(x: 100, y: 50, width: 100, height: 100))
        yellowBox.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowBox)
        
//        let redBox = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
    }
    



}

