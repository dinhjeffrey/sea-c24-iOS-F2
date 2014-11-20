//
//  Person.swift
//  AutoLayout
//
//  Created by Bradley Johnson on 11/10/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import Foundation
import UIKit

class Person : NSObject, NSCoding {
    
    var firstName : String
    var lastName : String
    var image : UIImage?
    
    init (first : String) {
        self.firstName = first
        self.lastName = "Doe"
    }
    
    required init(coder aDecoder: NSCoder) {
        self.firstName = aDecoder.decodeObjectForKey("firstName") as String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as String
        if let decodedImage = aDecoder.decodeObjectForKey("image") as? UIImage {
            self.image = decodedImage
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
        if self.image != nil {
        aCoder.encodeObject(self.image!, forKey: "image")
        } else {
            aCoder.encodeObject(nil, forKey: "image")
        }
    }

}
