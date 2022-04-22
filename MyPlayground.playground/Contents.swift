import UIKit

var numbers = [1, 2, 0, 3, 1, 4]
func checkForOneZero(array: [Int]) -> Bool {
    for item in numbers {
        if (item == 0){
            return true
        }
    }
    return false
}

func checkForTwoZeros(array: [Int]) -> Bool {
    var count = 0
    for item in numbers {
        if (item == 0) {
           count += 1
        }
    }
    if (count == 2){
        return true
    } else {
        return false
    }
}

func checkForThreeZeros(array: [Int]) -> Bool {
    var index = 0
    for item in numbers {
        if (item != 0) {
           index += 1
        } else {
            break
        }
    }
    if (numbers[index + 1] == 0 && numbers[index + 2] == 0){
        return true
    } else {
        return false
    }
}

func sumOfAllElaments(array: [Int]) {
    var sum = 0
    for item in numbers {
           sum += item
    }
    print(sum)
}

func cloneOfArrayReversed(array: [Int]) -> [Int]{
    let totalIndices = numbers.count - 1

    var reversedNumbers = [Int]()

    for arrayIndex in 0...totalIndices {
        reversedNumbers.append(numbers[totalIndices - arrayIndex])
    }
    return reversedNumbers
}

func countEvenAndOddNumbers(array: [Int]) {
    var evenNumbers = 0
    var oddNumbers = 0
    for item in numbers {
        if (item % 2 == 0) {
           evenNumbers += 1
        } else {
            oddNumbers += 1
        }
    }
    print("Четные числа: \(evenNumbers)")
    print("Нечетные числа: \(oddNumbers)")
}

func diffOfTheLargestAndTheSmallestNumbers(array: [Int]) {
    var theLargestNumber = 0
    for item in numbers {
        if (item > theLargestNumber) {
           theLargestNumber = item
        }
    }
    var theSmallestNumber = numbers[0]
    for item in numbers {
        if (item < theSmallestNumber) {
           theSmallestNumber = item
        }
    }
    print("Разницу между наибольшим и наименьшим числом: \(theLargestNumber - theSmallestNumber)")
}

checkForOneZero(array: numbers)
checkForTwoZeros(array: numbers)
checkForThreeZeros(array: numbers)
sumOfAllElaments(array: numbers)
cloneOfArrayReversed(array: numbers)
countEvenAndOddNumbers(array: numbers)
diffOfTheLargestAndTheSmallestNumbers(array: numbers)
