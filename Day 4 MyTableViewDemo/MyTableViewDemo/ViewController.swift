//
//  ViewController.swift
//  MyTableViewDemo
//
//  Created by Bradley Johnson on 11/5/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var people = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        var brad = Person()
        brad.name = "Brad"
        var john = Person()
        john.name = "John"
        var andy = Person()
        andy.name = "Andy"
        self.people = [brad,john,andy]
        var jeff = Person()
        jeff.name = "Jeff"
        self.people.append(jeff)
        
    self.tableView.dataSource = self
    self.tableView.delegate = self
        
        let lists = ["Save","Quit"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.people.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as UITableViewCell
        
        var personToDisplay = self.people[indexPath.row]
        cell.textLabel.text = personToDisplay.name
    
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var personToPass = self.people[selectedIndexPath!.row]
            detailViewController.selectedPerson = personToPass
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//       self.performSegueWithIdentifier("SHOW_DETAIL", sender: self)
//    }

}

