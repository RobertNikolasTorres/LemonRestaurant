import UIKit

// IF - ELSE  IF - ELSE

/*
 ------- SYNTAX ------
 
    if condition1 {
        this block runs if condition1 is true
    } else if condition2 {
        this block runs if condition1 is false and condition2 is true
    } else {
        this block runs if none of the above conditions are true
    }
 */


//  |---- EXAMPLE 1 ----|
var waterTemperature = 200

if waterTemperature >= 100 {
    print( "The water is boiling!" )
} else {
    print( "The water is not boiling!" )
}

// |----- EXAMPLE 2 -----|
var position = 1

if position == 1 {
    print( "🥇 You are first!" )
} else if position == 2 {
    print( "🥈 You are second!" )
} else if position == 3{
    print( "🥉 You are third!" )
} else {
    print( "☹️ You finished in position \(position). Keep training!" )
}


// |----- EXAMPLE 3 -----|
var temperature = 74

if temperature >= 68 && temperature <= 75 {
    print("The temperature is just right")
} else {
    print("The temperature is too hot or cold")
}

// |----- EXAMPLE 4 -----|
var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower == true || batteryPower == true{
    print("I can use my phone")
} else {
    print("You better find a charger")
}


// |----- MINI Challenge -----|
var vipMember:Bool = true

if vipMember {
    print("I am VIP")
} else {
    print("I am not VIP")
}


