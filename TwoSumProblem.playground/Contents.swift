import Foundation
import PlaygroundSupport


let nums = [2, 7, 11, 15]
let target = 9
let result = twoSum(from: nums,
                    target: target)
print("Indices of the two numbers that add up to \(target): \(result)")

func twoSum(from input: [Int], target: Int) -> [Int] {
    var resultDictionary: [Int: Int] = [Int: Int]()
    
    for (index, num) in input.enumerated() {
        print(index, num)
        var complement = target - num
        
        if let complementIndex = resultDictionary[complement] {
            return [complementIndex, index]
        }
        resultDictionary[num] = index
    }
    return [0, 0]
}
