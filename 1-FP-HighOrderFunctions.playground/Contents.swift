
import UIKit

// Pure functions



// Imperative
var collection = [1, 2, 3, 4, 5]
var results = [Int]()
for i in 0...collection.count {
    if i % 2 != 0 {
        results.append(i)
    }
}
print(results)


// Declerative
var result = collection.filter { $0 % 2 != 0}
print(result)


//: Map
// Imperative
var fruits = ["Banana","Pineapple","Coconut","papaya","Kiwi","Rambutan"]
var fruitLowercase = [String]()
for fruit in fruits {
    fruitLowercase.append(fruit.lowercased())
}
print(fruitLowercase)

// Declerative
let mappedFruits = fruits.map { $0.lowercased() }
print(fruitLowercase)
//: FlatMap
// Imperative
let numbers = ["1","3","pineapple","2"]
var numbersMapped = [Int]()
for number in numbers {
    if let toInt = Int(number) { // It can be nil
        numbersMapped.append(toInt)
    }
}
print(numbers)


// Declerative
let flattenNumbers = numbers.flatMap { Int($0) }
print(flattenNumbers)


//: Reduce

// Imperative
var totalLetters = 0
for fruit in fruits {
    totalLetters += fruit.count
}
print(totalLetters)

// Declerative
let reducedTotalLetters = fruits.reduce(0) { $0 + $1.count }
print(reducedTotalLetters)

//: Contains
// Imperative
var fruitContainsFourChar = false
for fruit in fruits {
    if fruit.count == 4 {
        fruitContainsFourChar = true
        break
    }
}
print("is fruit contains four characters? \(fruitContainsFourChar ? "yes": "no")")

// Declarative
let isFruitContainsFourChar = fruits.contains { $0.count == 4 }
print("is fruit contains four characters? \(isFruitContainsFourChar ? "yes": "no")")


//: Partition

// Imperative
var partitionedFruit:[String] = []
var partition = 0
for fruit in fruits {
    if fruit.contains("i") {
        partitionedFruit.append(fruit)
    } else {
        partitionedFruit.insert(fruit, at: partition)
        partition += 1
    }
}
fruits = partitionedFruit
print("Fruits contains -i- character \(fruits)")


// Declerative
fruits.partition(by: { $0.contains("i") })
print("Fruits contains -i- character \(fruits)")





