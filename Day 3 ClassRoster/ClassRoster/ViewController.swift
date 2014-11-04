//
//  ViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 11/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var names = [Person]() //this creates an empty array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        var myPerson = Person()
        myPerson.name = "Santa"
        var anotherPerson = Person()
        self.names.append(myPerson) //this appends myPerson to array
        self.names.append(anotherPerson)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("table view is asking about cell at row: \(indexPath.row) at section: \(indexPath.section)")
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
        //cell.textLabel.text = "Go Hawks"
//        if indexPath.row == 0 {
//        cell.textLabel.text = self.names[0]
//        } else if indexPath.row == 1 {
//            cell.textLabel.text = self.names[1]
//        } else if indexPath.row == 2 {
//            cell.textLabel.text = self.names[2]
//        }
        var personToDisplay = self.names[indexPath.row]
        cell.textLabel.text = personToDisplay.name
        return cell
    }


}

