import Foundation

// MARK:  Question 1

func isPalindromeString(inputString value: String)-> Bool{
   
    var characterIndex = 0
    let trimmedValue = value.removeWhitespace()
    let stringLength = trimmedValue.count
    
   
        while  characterIndex < stringLength / 2 {
          
            let firstIndex = trimmedValue.index(trimmedValue.startIndex, offsetBy: characterIndex)
            let endIndex = trimmedValue.index(trimmedValue.endIndex, offsetBy: -characterIndex-1)
            
            if trimmedValue[firstIndex] == trimmedValue[endIndex] {
                characterIndex += 1
            }
            else {
                return false
            }
        }
        
       
    
    return true
}



// String extension for my case
extension String {
   func replace(string:String, replacement:String) -> String {
       return self.replacingOccurrences(of: string, with: replacement, options: NSString.CompareOptions.literal, range: nil)
   }

   func removeWhitespace() -> String {
       return self.replace(string: " ", replacement: "")
   }
 }

// taco cat taco cat
isPalindromeString(inputString: "taco cat taco cat")


// MARK: Question 2
// 2- Verilen bir array içerisindeki her bir elemanın sayısını veren bir fonksiyon yazınız.

let arr: [String] = ["a","b"]
let arrInt = [[1,2],2,3,4,5] as [Any]
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]




func findElementCount<T >(_ data: T ) -> Int {
    if let arr = data as? [Any] {do {
        return arr.count
    }}
    
    if let dict = data as? [AnyHashable : AnyHashable]  {do {
        return dict.count
    }}
    
    
    
    return 0
}

findElementCount(responseMessages)


// MARK: Question 3

func createPyramid(floorPyramid: Int,  isPyramid: Bool = false) {
    // if pyramid
    //   *
    //  * *
    // * * *
    if isPyramid {
        for i in 1...floorPyramid
        {
            for _ in stride(from: floorPyramid, to: i, by: -1)
            {
                print(terminator : " ")
            }

            for _ in 1...i
            {
                print("*",terminator : " ")
            }
            print(" ")
        }
        
    } else {
        for i in 0..<floorPyramid {
            for j in 0...i {
                print("*", terminator: "")

            }
            print("")
        }
    }
   
    
}

createPyramid(floorPyramid: 3)

// MARK: Question 4

createPyramid(floorPyramid: 3, isPyramid: true)

// MARK: Question 5

// Find the sum of all the multiples of 3 or 5 below 1000.

func findBelowSum(to: Int) -> Int {
    var sum = 0
    for i in 0..<to {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i
        }
        
    }
    return sum
}

findBelowSum(to: 1000)

// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


func calculateEvenFibonacci() {
    let targetNumber = 4000000
    var sum = 2
    var numberOne = 1
    var numberTwo = 2
    var nextNumber = 0
    
    while nextNumber <= targetNumber {
        nextNumber = numberOne + numberTwo
        numberOne = numberTwo
        numberTwo = nextNumber
        if nextNumber % 2 == 0 {
            sum = sum + nextNumber
        }
    }
    print(sum)
}

calculateEvenFibonacci()

// What is the largest prime factor of the number 600851475143 ?

func largestPrimeFactor(primeNumber: Int) -> Int {
    var i = 2;
    var primeNumb = primeNumber
    
    while i * i < primeNumb {
        while primeNumb % i == 0 {
            primeNumb /= i

        }
        i += 1

        
    }
    return primeNumb
}

largestPrimeFactor(primeNumber: 600851475143)
