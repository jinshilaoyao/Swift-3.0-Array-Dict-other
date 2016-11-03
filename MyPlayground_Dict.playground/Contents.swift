
var array: [Int] = Array()

var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

let httpResponseCodes = [200, 403, 301]
for code in httpResponseCodes {
    if let message = responseMessages[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown response \(code)")
    }
}

var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 15],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)


let imagePaths = ["star": "/glyphs/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]

for (name, path) in imagePaths {
    print("The path to '\(name)' is '\(path)'.")
}

func demo_Properties() {
    var dict = [200: "OK",
                403: "Access forbidden",
                404: "File not found",
                500: "Internal server error"]
    
    dict.count
    
    for k in dict.keys {
        print(k)
    }
    for k in dict.values {
        print(k)
    }
    for (n, c) in "Swift".characters.enumerated() {
        print("\(n): '\(c)'")
    }
    
    dict.forEach { (dic: (key: Int, value: String)) in
        print("\(dic.value)")
    }
    
    dict.max { (A: (key: Int, value: String), B: (key: Int, value: String)) -> Bool in
        return A.key > B.key
    }
    
    let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
    let greatestHue = hues.max { a, b in a.value < b.value }
    print(greatestHue)
    
}

demo_Properties()