// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Cup {
    var size = "small"
    var color = "white"
    
    func throwCup () {
        
        println("cup was thrown")
    }
    
    class func pourStuff () {
        
    }
    
    class func costOfACup(){
        println("$30000")
    }
}

class SuperCup : Cup {
    var awesome = "Yes"
}

var mySuperCup = SuperCup()

var pimpCup = Cup()

if pimpCup is SuperCup {
    
} else {
    
}

if let myCup = pimpCup as? SuperCup {
    
    myCup.awesome
    
} else {
    
}

pimpCup.size

pimpCup.throwCup()

Cup.pourStuff()
Cup.costOfACup()



