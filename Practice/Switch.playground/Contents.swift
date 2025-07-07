import UIKit

// SWITCH

/*
 ------- SYNTAX ------
 
switch value {
    case pattern 1 :
         Code to run if value matches pattern1
    case pattern 2 :
         Code to run if values matches pattern2
    default:
         Code to run if no cases match
 }
 
 */
// |----- EXAMPLE 1 -----|
let position = 5

switch position {
case 1:
    print("You are first")
case 2:
    print("You are second")
case 3:
    print("You are third")
default:
    print("You place \(position)")
}

// |----- EXAMPLE 2 -----|
let grade = "a"

switch grade.uppercased() {
case "A", "A+" :
    print("Excellent!")
case "B", "B+" :
    print("Good job!")
case "C", "C+" :
    print("You passed")
default:
    print("try again...")
}

// |----- EXAMPLE 3 -----|
// using range
let score = 87

switch score {
case 90...100:
    print("Grade: A")
case 80..<90:
    print("Grade: B")
case 70..<80:
    print("Grade: C")
default:
    print("Grade: F")
}
