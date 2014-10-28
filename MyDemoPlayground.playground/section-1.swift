// Playground - noun: a place where people can play

import UIKit

let myNumber = 1

var myName = "Brad"

myName = "John"


class Person {
    var firstName = "Brad"
    var age = 26
    
    init (name : String) {
        self.firstName = name
    }
    init (number : Int){
        self.age = number
    }
    func printThisTitle(title : String, number : Int) {
        println(self.firstName)
    }
    
    func doSomething() {
        println(self.firstName + "is awesome")
    }
}

class SuperHero : Person {
    var homeTown = "Gotham"
    
    func fightCrime() {
        println("fighting crime")
    }
}

var batman = SuperHero(number: 32)
batman.firstName = "Bruce"
batman.fightCrime()


var myPerson = Person(name: "Zack")
var myBFF = Person(name: "Stacy")
var myPerson2 = Person(number: 32)

myBFF.firstName = "Ryan"

//calling our two methods
myPerson.printThisTitle("Brad", number: 32)
myPerson.doSomething()
//accessing our property
myPerson.firstName



