//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class person {
    var name: String = "name"
    
    init(_ name: String) {
        self.name = name
    }
}

let arrayA = [person("joker"),person("bitt"),person("anl")]

let arrayB = [person("joker")]

arrayA.elementsEqual(arrayB) { (A, B) -> Bool in
    return A.name == B.name
}

func demo1() {
    
    let array = Array(repeating: "a", count: 10)
}
demo1()


class IntegerReference {
    var value = 10
}

//In this case, the values stored in the array are references to objects that live outside the array. 存储在数组中的值是在数组以外的对象的引用
// If you change a reference to an object in one array, only that array has a reference to the new object.

func demo2() {
    var first = [IntegerReference(),IntegerReference()]
    var second = first
    
    first[0].value = 100
    
    first
    second
    
    first[0] = IntegerReference()
    
    first
    second
}
demo2()

func demo3() {
    
    var numbers = [1,2,3,4,5]
    var first = numbers
    var second = numbers
    
    numbers[0] = 100
    numbers[1] = 200
    
    numbers
    first
    second
    
}
demo3()

//Bridging Between Array and NSArray
//For bridging to be possible, the Element type of your array must be a class, an @objc protocol (a protocol imported from Objective-C or marked with the @objc attribute),
//the colors array can be bridged to NSArray because its String elements bridge to NSString.

func demo4() {
    let colors = ["periwinkle", "rose", "moss"]
    let moreColors: [String?] = ["ochre", "pine"]
    
    let url = NSURL(fileURLWithPath: "names.plist")
    (colors as NSArray).write(to: url as URL, atomically: true)
    // true
    
    (moreColors as NSArray).write(to: url as URL, atomically: true)
    // error: cannot convert value of type '[String?]' to type 'NSArray'
}
demo4()

func demo_Initializers() {
    let a = Array(arrayLiteral: 1,2)
    let b = Array(repeating: 1, count: 3)
}
demo_Initializers()

func demo_Properties() {
    
    let array = [1,2,3]
    array.capacity//using its current storage.
    array.count
    array.debugDescription
    array.description
    array.endIndex
    array.startIndex
    array.customMirror // ?
    array.first
    array.indices // ?
    array.isEmpty
    array.lazy // ?
    array.underestimatedCount
}
demo_Properties()

func demo_Methods() {
    var array = [1,2,3,4]
    array.append(9)
    array.popLast()
    array.dropFirst()
    array.dropLast()
    array.reserveCapacity(1 )
    array.append(contentsOf: [1,2])
    array.elementsEqual([1,2,3,4,1,2])
    //this sequence and another sequence contain the same elements in the same order.
    
    for (index,number) in array.enumerated() {
        index
        number
    }
    
    var arrayBool: Array<Bool>

    let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    let shortNames = cast.filter { $0.characters.count < 5 }
    print(shortNames)
    
    
    let possibleNumbers = ["1", "2", "three", "///4///", "5"]
    
    //array的闭包方法
    
    let lowercaseNames = cast.map { name in
        return name.lowercased()
    }
    // 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
    let letterCounts = cast.map { $0.characters.count }
    // 'letterCounts' == [6, 6, 3, 4]
    
    let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
    // [1, 2, nil, nil, 5]
    
    let flatMapped: [Int] = possibleNumbers.flatMap { str in Int(str) }
    // [1, 2, 5]
    //Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.
    
    let numberWords = ["one", "two", "three"]
    for word in numberWords {
        print(word)
    }
//     Prints "one"
//     Prints "two"
//     Prints "three"
    
    numberWords.forEach { word in
        print(word)
    }
    
    
    let line = "BLANCHE:   I don't want realism. I want magic!"
    print(line.characters.split(whereSeparator: { $0 == " " }).map(String.init))
    // Prints "["BLANCHE:", "I", "don\'t", "want", "realism.", "I", "want", "magic!"]"
    line.characters.split(separator: " ").map { String($0) }
    
}

demo_Methods()

func demo_Methods2() {
    
    var array = ["a","b","c"]
    array.insert("d", at: 0)
    array.joined(separator: ",")
    array.joined()
    
    for a in array.makeIterator() {
        a
    }
    
    let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    let lowercaseNames = cast.map { $0.lowercased() }
    // 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
    let letterCounts = cast.map { $0.characters.count }
    // 'letterCounts' == [6, 6, 3, 4]
    
    array.max()
    array.min()
    cast.min()
    cast.min { (a, b) -> Bool in
        return a.characters.count < b.characters.count
    }
    
    let numbers = [1, 2, 3, 4, 5]
    print(numbers.prefix(2))
    // Prints "[1, 2]"
    print(numbers.prefix(10))
    // Prints "[1, 2, 3, 4, 5]"
    
    
    var students = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
    students.sort(by: >)
    print(students)
     // Prints "["Peter", "Kweku", "Kofi", "Akosua", "Abena"]"
    
    var firarray = [1,2,3,4]
    firarray.reduce(2) { (x, y) -> Int in
        x
        y
        return 2*x + y
    }
    
    
    firarray.filter { (x) -> Bool in
        return x%2 == 0
    }
    
    firarray.reverse()
    
}

demo_Methods2()


