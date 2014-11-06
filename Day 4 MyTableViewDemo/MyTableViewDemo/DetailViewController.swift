//
//  DetailViewController.swift
//  MyTableViewDemo
//
//  Created by Bradley Johnson on 11/5/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var selectedPerson = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.selectedPerson.name
        self.nameLabel.text = self.selectedPerson.name
        self.view.backgroundColor = UIColor.redColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}