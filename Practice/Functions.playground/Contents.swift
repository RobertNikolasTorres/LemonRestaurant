import UIKit

// creating the function
func greet(person: String)->String{
    let greeting = "Hello, \(person)!"
    return greeting
}

// call the function
let message = greet(person: "Robert")
print(message)

func greet2(person:String, formally: Bool = false)->String{
    if formally{
        return "Hello, \(person)."
    }else{
        return "Hi \(person)"
    }
}

print(greet2(person: "someone"))
print(greet2(person: "Dr. Murillo", formally:true))


func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 99.9, quantity: 2)
print(total)


//-------EXAMPLE-------
func deliveryTime(minutes: Int) -> String {
    return "Ready in \(minutes) minutes"
}

let time = deliveryTime(minutes: 10)
print(time)
//

//------EXAMPLE---------
/*func total(price: Double, tax: Double) -> String {
    let taxAmount = price * tax
    let totalPrice = price + taxAmount
    return String(format: "%.2f", totalPrice)
}

print(total(price: 100, tax: 0.08))
*/


//------EXAMPLE--------
func taxCalculator(price: Double) -> Double {
    return (price * 0.08) + price
}
print(taxCalculator(price: 100))
