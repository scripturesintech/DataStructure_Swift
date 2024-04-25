import Foundation
import PlaygroundSupport

let numbers = [1,2,4,5,7,9,23,67,68,98,34,3]
let largestNum = largestNumber(from: numbers)
print("largestNumber: \(largestNum)")

func largestNumber(from input: [Int]) -> Int {
    var largestNumber: Int = input[0]
    
    for num in input {
        if num > largestNumber {
            largestNumber = num
        }
    }
    return largestNumber
}

