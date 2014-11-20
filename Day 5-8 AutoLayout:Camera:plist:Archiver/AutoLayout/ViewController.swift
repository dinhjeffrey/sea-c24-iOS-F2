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
        
        if let peopleFromArchive = self.loadFromArchive() as [Person]? {
            self.people = peopleFromArchive
        } else {
            self.loadFromPlist()
            self.saveToArchive()
        }
        var hasLaunched = NSUserDefaults.standardUserDefaults().boolForKey("firstTime")
        
            if hasLaunched == false {
                //this is first launch
                println("first launch")
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstTime")
            }
        
    
//        var hasLaunched = false
//        NSUserDefaults.standardUserDefaults().setBool(hasLaunched, forKey: "firstTime")
//        NSUserDefaults.standardUserDefaults().synchronize() //calls save
        self.loadFromPlist()
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData() 
        self.saveToArchive()
    }
    
    func loadFromArchive() -> [Person]? {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive1") as? [Person] {
            return peopleFromArchive
        }
        return nil
    }
    
    func saveToArchive() {
         let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        NSKeyedArchiver.archiveRootObject(self.people, toFile: documentsPath + "/archive1")
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let destinationVC = segue.destinationViewController as DetailViewController
            var selectedIndexPath = self.tableView.indexPathForSelectedRow()
            destinationVC.selectedPerson = self.people[selectedIndexPath!.row]
        }
    }


}

