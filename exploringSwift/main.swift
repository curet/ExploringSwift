//
//  main.swift
//  exploringSwift
//
//  Created by José C.S. Curet on 5/20/20.
//

import Foundation

// objective: Explore swift Language [from variables to Classes and Dictionaries]

// --------------- Variables ------------------

var test:String = "Hello"
var test2:Int = 5
var test3:Float = 5.3
var test4:Double = 5.445454454
var test5:Double = 5.86574589657


print(test3)


// --------------- if statement ------------------

if test4 < test5{
    print(test4, " is smallest than ", test5)
}
else if test5 < test4{
    print(test5, " is smallest than ", test4)
}
else{
    print("nothing is true")
}

if test4 < test5 && test5 < test4{
    print("Well, this is a first")
}


// --------------- Loops ------------------

// for loop
for i in 1...3{
    print(i)
}

for _ in 1...3{
    print("hello")
}

var size:Int = 5

for i in 0...size{
    print("test", (i+1))
}

// swift does not allow add Int and Double data types
//var sum:Double = 0
//var i:Double = 0
//
//for _ in 0...size{
//    sum = sum + i
//
//}
//print(sum)

var sum = 0;

for i in 0...size{
    
    sum += i
}
print(sum)


// while loop
var a = 2
var b = 5

while a < b{
    print("TEST")
    a += 1
}

// repeat-while loop
var x = 2
var y = 5

repeat{
    
    print("Learning Swift")
    x += 1
    
}while x < y


// --------------- Functions ------------------

func addTwoNumbers(){
    
    let a = 2
    let b = 3
    let c = a + b
    print(c)
}

addTwoNumbers()

// return types - functions

func addThreeNumbers() -> Int{
    
    let a = 1
    let b = 2
    let c = 3
    
    return a + b + c
}

let z = addThreeNumbers()

print(z)

// parameters - functions

var m:Int = 1
var n:Int = 2

            // option A
func subtracting(arg a:Int, arg b:Int) -> Int{
    
    return a - b
}

let sub = subtracting(arg: m, arg: n)

print(sub)

            // option B
func subtracting2(a:Int, b:Int) -> Int{
    
    return a - b
}

let sub2 = subtracting2(a: m, b: n)

print(sub2)

            // option C
func subtracting3(_ a:Int,_ b:Int) -> Int{
    
    return a - b
}

let sub3 = subtracting3(m, n)

print(sub3)


// --------------- Classes ------------------

class Person{
    
    var name = ""
    var lastName = ""
    var age = 0
    
    var comments = 0
    
    func addComments(){
        comments += 1
    }
}

let p = Person()

p.name = "Johanna"
p.lastName = "Anderson"
p.age = 21

print(p.name)
print(p.lastName)
print(p.age)

let p2 = Person()

p2.name = "Scarlett"
p2.lastName = "Johansson"
p2.age = 35
p2.addComments()
print(p2.comments)

print(p2.name)
print(p2.lastName)
print(p2.age)


class Car{
    
    var topSpeed = 150
    
    func drive(){
        
        print("Driving at \(topSpeed)")
    }
}

            // inheritance
class NextCar: Car{
    
        // overrride function drive
    override func drive(){
        
        // super make use of a function from the parent class
        super.drive()
        print("Driving at \(topSpeed + 50)")
    }
    
    func overSpeed(){
        print("Driving over the speed limit")
    }
}


let vehicle = Car()

//vehicle.topSpeed = 10
vehicle.drive()

let vehicle2 = NextCar()

//vehicle2.topSpeed = 20
vehicle2.drive()
vehicle2.overSpeed()


// --------------- Arrays ------------------

var classes = ["programming", "language", "art"]

for i in 0...2{
    print("Asssigment of \(classes[i])")
}

print()

        // by array size
for i in classes{
    print("Asssigment of \(i)") // I can also write `print("Asssigment of " + i)`
}

// declare Array without initializing it

var empty = [Int]()

empty += [1,43,52,67,86] // adding elements to previous array

print()

for i in empty{
    print(i)
}

empty.remove(at: 3) // removing the element on position 3

print()

for i in empty{
    print(i)
}

// --------------- Dictionaries ------------------

var firstDic =  Dictionary <Int, Int>()

                // first key then value type
var firstDic2 = [String:Int]()
            // firstDic and firstDic2 declarations are equivallent

firstDic2["Scarlett"] = 35;
firstDic2["Johanna"] = 21

print(firstDic2["Scarlett"])
print(firstDic2["Johanna"])
            
                        // nil -> to remove value of dictionary
//firstDic2["Scarlett"] = nil
//print(firstDic2["Scarlett"])

print()
for (name, age) in firstDic2{
    print("\(name) has \(age) years")
}

// This was fun, having a simple overview of the Swift programming language
