//
//  Person.swift
//  AutoLayout
//
//  Created by Bradley Johnson on 11/10/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import Foundation
import UIKit

class Person {
    
    var firstName : String
    var image : UIImage?
    
    init (first : String) {
        self.firstName = first
    }
    
    init () {
        self.firstName = "Jhn"
    }
}
