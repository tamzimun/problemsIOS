import Cocoa

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

func encryptMessage(input: String) -> String {
    var temp = ""
    for item in input {
        if (code[String(item)] != nil)  {
            temp += code[String(item)]!
        } else {
            temp += " "
        }
    }
    return temp
}

encryptMessage(input: "hello programmer")

var numbers = [1, 2, 3, 4, 1]
func createDictionaryFromArray(array: [Int]) -> [Int:Int] {
    var myDict : [Int : Int] = [:]
    let count = 1
    for i in 0...numbers.count-1{
        if myDict[numbers[i]] != nil{
            myDict[numbers[i]] = count + 1
        } else {
            myDict[numbers[i]] = count
        }
    }
    return myDict
}
createDictionaryFromArray(array: numbers)

var student = [
    "Moldaly Aida":4.0,
    "Asylbek Asema":3.5,
    "Margulan Bahtyiar":3.0
]
func averageGpa(dictionary: [String:Double]) -> Double {
    var temp: Double = 0.0
    for values in student.values {
        temp += Double(values)
    }
    let average: Double = temp / Double(student.count)
    return average
}
averageGpa(dictionary: student)

func averageGpaLargerThanThree(dictionary: [String:Double]) -> [String:Double] {
    var myDict : [String:Double] = [:]
    for (key, values) in student {
        if Double(values) > 3.0 {
            myDict[key] = Double(values)
        }
    }
    return myDict
}
averageGpaLargerThanThree(dictionary: student)

var studentsA = ["Moldaly","Aida","Asylbek","Asema","Margulan","Bahtyar"]

func theSameWords(array: [String]) -> [String:Int] {
    var myDict : [String:Int] = [:]
    let count = 1
    for i in 0...studentsA.count - 1 {
        if myDict[studentsA[i]] != nil{
            myDict[studentsA[i]] = count + 1
        } else {
            myDict[studentsA[i]] = count
        }
    }
    return myDict
}
theSameWords(array: studentsA)
