import UIKit

//
// CodeWithChris Learn Swift for Beginners
// http://codewithchris.com/learn-swift
//
// Challenge #1: The Lost Animal Challenge
//
// Instructions: 
// Given the two arrays below, write a function that takes a String as an input parameter and returns a Boolean value. The function should return true if the String input is in either array and it should return false if the String input is in neither array.
//
// Examples:
// Call your function and pass in the String "cat" as the input. Your function should return true
// Call your function and pass in the String "cow" as the input. Your function should return false
 
let array1 = ["dog", "cat", "bird", "pig"]
let array2 = ["turtle", "snake", "lizard", "shark"]

// Write your function below:

func stringInArray(s:String) -> Bool{
    
    for i in array1{ if s == i{ return true; } }
    for i in array2{ if s == i{ return true; } }
    return false;
}

// Enter a string to verify if it is in one of the arrays, return true or false
var x = stringInArray(s: "shark")

print(x)
