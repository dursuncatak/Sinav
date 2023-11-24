import UIKit

// MARK: Soru 1

var array1: [Int] = [1,3]
var array2: [Int] = [2]
var array3: [Int] = [1,2]
var array4: [Int] = [3,4]

func medyanBul(array1: [Int], array2: [Int]) -> Double {
    var array3: [Int] = array1 + array2
    array3.sort()
    var medyan: Double = 0
    if array3.count % 2 == 0 {
        let firstIndex = (array3.count / 2) - 1
        let lastIndex = array3.count / 2
        medyan = Double(array3[firstIndex] + array3[lastIndex]) / 2
    } else {
        let index = ((array3.count - 1) / 2)
        medyan = Double(array3[index])
    }
    return medyan
}

medyanBul(array1: array1, array2: array2)
print(medyanBul(array1: array1, array2: array2))
medyanBul(array1: array3, array2: array4)
print(medyanBul(array1: array3, array2: array4))


// MARK: Soru 2
var dizi: [Int] = [1,1,2]
var dizi2: [Int] = [0,0,1,1,1,2,2,3,3,4]

func sortArray(myArray: [Int]) -> [Any] {
    var alreadyThere = Set<Int>()
    var uniquePosts = myArray.compactMap { (post) -> Int? in
        guard !alreadyThere.contains(post) else { return 99 }
        alreadyThere.insert(post)
        return post
    }
    uniquePosts.sort()
    var stringArray: Any = uniquePosts.map {
      (number: Int) -> Any in
        if number == 99 {
            return String("_")
        } else {
            return number
        }
    }
    return stringArray as! [Any]
}

sortArray(myArray: dizi)
print(sortArray(myArray: dizi))
sortArray(myArray: dizi2)
print(sortArray(myArray: dizi2))


// MARK: Soru 3

var newArray = [1,3,5,6]
var index = 0
func foundIndex(number: Int) -> Int {
   if newArray.contains(number) {
       index = newArray.firstIndex(of: number) ?? 0
   } else {
       newArray.append(number)
       newArray.sort()
       index = newArray.firstIndex(of: number) ?? 0
   }
    return index
}


foundIndex(number: 7)
print(foundIndex(number: 7))
foundIndex(number: 5)
print(foundIndex(number: 5))
foundIndex(number: 2)
print(foundIndex(number: 2))
