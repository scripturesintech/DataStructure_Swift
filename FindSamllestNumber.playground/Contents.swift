import Foundation
import PlaygroundSupport

let numbers = [15,22,3,4,5,6,7,8,9,10,11]
let smallestNum = smallestNumber(from: numbers)
print("smallestNum: \(smallestNum)")

func smallestNumber(from input: [Int]) -> Int {
    
    var smallestElement: Int = numbers[0]
    
    for number in input {
        if number < smallestElement {
            smallestElement = number
        }
    }
    
    return smallestElement
}
