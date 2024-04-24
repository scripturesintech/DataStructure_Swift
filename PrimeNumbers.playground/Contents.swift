import Foundation
import PlaygroundSupport


// Find Prime Numbers from given array of Int

let arr = [1,2,3,4,5,6,7,8,9]

let primeNums = primeNumbers(from: arr)
debugPrint("Prime numbers are : \(String(describing: primeNums))")

func primeNumbers(from input: [Int]) -> [Int] {
    
    var primeNumbers: [Int] = []
    
    for el in input {
        if isPrime(el) {
            primeNumbers.append(el)
        }
    }
    return primeNumbers
}

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
