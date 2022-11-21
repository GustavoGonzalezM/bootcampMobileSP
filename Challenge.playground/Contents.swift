import UIKit

// Function A
func generateRandomNumber() -> String{
    var randomnumber: String = ""
    for _ in 0...7 {
        randomnumber.append(String(Int.random(in: 0...9)))
    }
    return randomnumber
}

func answerType(type: String ) -> String {
    
    let myString = generateRandomNumber()

    if type == "TipoA" {
        return "54\(myString)"
    }else if type == "TipoB" {
        return "08\(myString)"
    }else {
        return "Wrong input"
    }
}
var responseTypeA = answerType(type: "TipoA")
var responseTypeB = answerType(type: "TipoB")

print("Tipo A: \(responseTypeA)")
print("Tipo B: \(responseTypeB)")


//Function B
func generateRandomArray() -> [Int]{
    var randomArray: [Int] = []
    for _ in 0...7 {
        randomArray.append(Int.random(in: 0...99))
    }
    return randomArray
}

var myArray = generateRandomArray()

func orderArray(initialArray: [Int], order: String) -> [Int] {
    var result = initialArray
    
    var isOrdering: Bool = true
    
    if order == "Asc" {
        while (isOrdering) {
            isOrdering = false
            for i in 0..<result.count - 1 {
                if result[i] > result[i+1] {
                    let swap = result[i]
                    result[i] = result[i+1]
                    result[i+1] = swap
                    isOrdering = true
                }
            }
        }
        return result
    } else if order == "Desc" {
        while (isOrdering) {
            isOrdering = false
            for i in 0..<result.count - 1 {
                if result[i] < result[i+1] {
                    let swap = result[i]
                    result[i] = result[i+1]
                    result[i+1] = swap
                    isOrdering = true
                }
            }
        }
        return result
    } else {
        print("Error")
        return []
    }
}
var orderAsc = orderArray(initialArray: myArray, order: "Asc")
var orderDesc = orderArray(initialArray: myArray, order: "Desc")

print("Fix original: \(myArray)")
print("Ascendant: \(orderAsc)")
print("Descendant: \(orderDesc)")
