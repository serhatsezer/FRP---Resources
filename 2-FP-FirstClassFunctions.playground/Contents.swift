//: Playground - noun: a place where people can play

import UIKit

//: Functional Programming

//: High-order function
// Functions as first-class citizen
func operate(_ operand: String) -> ((Double, Double) -> Double)?{
    
    func add(a: Double, b: Double) -> Double {
        return a + b
    }
    
    func min(a: Double, b: Double) -> Double{
        return a - b
    }
    
    func multi(a: Double, b: Double) -> Double {
        return a * b
    }
    
    func div (a: Double, b: Double) -> Double{
        return a / b
    }
    
    switch operand {
    case "+":
        return add
    case "-":
        return min
    case "*":
        return multi
    case "/":
        return div
    default:
        return nil
    }
}

var function = operate("+")
print(" 3 + 4 = \(function!(3,4))")

function = operate("-")
print(" 3 - 4 = \(function!(3,4))")

function = operate("*")
print(" 3 * 4 = \(function!(3,4))")

function = operate("/")
print(" 3 / 4 = \(function!(3,4))")



//: First-class citizen
let button = UIButton()
let label = UILabel()
let imageView = UIImageView()
let view = UIView()

let subviews = [button, label, imageView]
subviews.forEach { subview in
    view.addSubview(subview)
}

// now we can treat addSubview method as a closure of type (UIView) -> Void
subviews.forEach(view.addSubview)

// we can create functions as a variable
let myFunc: (Double) -> Double = floor // floor is built-in method in Math framework in iOS SDK
myFunc(5.12345) //> 5





