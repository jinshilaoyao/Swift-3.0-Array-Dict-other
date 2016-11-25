print("The test string is:", "hello", "world", separator: " | ", terminator: " -> ")
print("Wow", "hey", "haha!")

//下标识符都是合法的：
var a = 0
var 你好 = 1
var 名探偵コナン = 2
var αβγ = 3
var 😄🐶🐱 = 100
var ０ = 0
var 🔼 = 3

//以下标识符是不合法的：
//var ♦️ = 0
//var ❌ = 1
//var △ = 2
//var ➗ = 10

let binary = 0b01001100
let octonary = 0o114
let decimal = 76
let hex = 0x4c

let t = "长度".utf16.count
let t2 = "😄🐶🐱".utf16.count

let str = "abcdefg"

//元组
var tuple = (100, 10.5, "hello")
let value = tuple.0 + Int(tuple.1) + tuple.2.utf16.count

var profile = (age: 30, weight: 10.5, male: true)
let age = profile.age
let weight = profile.weight
let isMale = profile.male


let (age1, weight1, isMale1) = profile
let (age2, _, isMale2) = profile

