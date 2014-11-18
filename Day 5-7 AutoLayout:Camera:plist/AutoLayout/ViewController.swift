//
//  ViewController.swift
//  AutoLayout
//
//  Created by Bradley Johnson on 11/10/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var people = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadFromPlist()
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadFromPlist() {
        
        let plistURL = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        
        let plistArray = NSArray(contentsOfFile: plistURL!)
        for object in plistArray! {
            println("looped!")
            if let personDictionary = object as? NSDictionary {
                let firstName = personDictionary["First Name"] as String
                var person = Person(first: firstName)
                self.people.append(person)
            }
        }
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as PersonTableViewCell
        //cell.textLabel.text! = "Brad"
        var personForCell = self.people[indexPath.row]
        cell.nameLabel.text = personForCell.firstName
        //cell.subNameLabel.text = "Teacher"
        cell.personImageView.backgroundColor = UIColor.redColor()

        return cell
    }


}

