import Foundation
import PlaygroundSupport

let numbers = [1, 2, 2, 3, 3, 4, 4, 5, 2, 7, 8, 8, 8, 9, 9]
let arrayOfString = ["R", "O", "O", "P", "E", "S", "H"]

let withoutDuplicateNumbers = removeDuplicates(numbers)
print("Final numbers: \(withoutDuplicateNumbers)")

let withoutDuplicates = removeDuplicates(arrayOfString)
print("Final arrayOfString: \(withoutDuplicates)")

func removeDuplicates<T: Equatable>(_ array: [T]) -> [T] {
    var result: [T] = []
    
    for el in array {
        if !result.contains(el) {
            result.append(el)
        }
    }
    return result
}

/*
 Find Duplicate Numbers
 */
let nums = [1, 2, 3, 4, 5, 2, 7, 8, 5, 9]
let duplicateNumbers = findDuplicates(nums)
print("Duplicate chars: \(duplicateNumbers)")

func findDuplicates(_ nums: [Int]) -> [Int] {
    var frequencyArray = Array(repeating: 0, count: 256)
    var duplicates = [Int]()
    var withoutDuplicates = [Int]()
    
    for num in nums {
        frequencyArray[num] += 1
        if frequencyArray[num] > 1 {
            duplicates.append(num)
        } else {
            withoutDuplicates.append(num)
        }
    }
    
    print("Without duplicates: \(withoutDuplicates)")
    return duplicates
}

/*
 Find Duplicate chars
 */
let characters: [Character] = ["a", "b", "c", "d", "a", "e", "f", "b", "g", "h", "i"]
let duplicateChars = findDuplicatesInCharArray(characters)
print("Duplicate chars: \(duplicateChars)")


func findDuplicatesInCharArray(_ chars: [Character]) -> [Character] {
    var frequencyArray = Array(repeating: 0, count: 256)
    var duplicates = [Character]()
    var withoutDuplicates = [Character]()
    
    for char in chars {
        let asciiValue = Int(char.asciiValue!)
        frequencyArray[asciiValue] += 1
        if frequencyArray[asciiValue] > 1 {
            duplicates.append(char)
        } else {
            withoutDuplicates.append(char)
        }
    }
    
    print("Without duplicates: \(withoutDuplicates)")
    return duplicates
}

