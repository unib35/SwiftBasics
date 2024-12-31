import Foundation
// 집합 (Set)
let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
var fibonacciSet: Set<Int> = Set(fibonacciArray)

print(fibonacciSet)
print(fibonacciArray.count)
print(fibonacciSet.count)

// 집합의 요소 삽입, 제거
fibonacciSet.insert(35)
print(fibonacciSet)
print(fibonacciSet.contains(35))

fibonacciSet.remove(35)
print(fibonacciSet.contains(35))

let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

// 합집합
let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers)
// 2, 4, 6, 8, 10, 1, 3, 순서 없음
print(evenOrTriangularNumbers.count) // 7

// 교집합
let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers)
// 1, 9, 순서 없음
print(oddAndSquareNumbers.count) // 2

// 대칭 차집합
let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers)
// 4, 9, 3, 6, 10, 순서 없음
print(squareOrTriangularNotBoth.count) // 5

// 집합 뺄셈
let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
print(squareNotOdd.count) // 1

var tags: Set<String> = ["Swift", "iOS", "macOS", "tvOS", "watchOS"]
tags.insert("Swift")
print(tags)

let animalKingdom: Set<String> = ["dog", "cat", "pigeon", "chimpanzee", "snake", "kangaroo", "giraffe", "elephant", "tiger", "lion", "panther"]
let vertebrates: Set<String> = ["dog", "cat", "pigeon", "chimpanzee", "snake", "kangaroo", "giraffe", "elephant", "tiger", "lion", "panther"]
let reptile: Set<String> = ["snake"]
let mammals: Set<String> = ["dog", "cat", "chimpanzee", "kangaroo", "giraffe", "elephant", "tiger", "lion", "panther"]
let catFamily: Set<String> = ["cat", "tiger", "lion", "panther"]
let domesticAnimals: Set<String> = ["cat", "dog"]

print(mammals.isSubset(of: animalKingdom))

print(mammals.isSuperset(of: catFamily))

print(vertebrates.isStrictSubset(of: animalKingdom))
print(vertebrates.isSubset(of: animalKingdom))

print(mammals.isStrictSubset(of: animalKingdom))

print(animalKingdom.isStrictSuperset(of: vertebrates))
print(animalKingdom.isStrictSuperset(of: domesticAnimals))

// 서로소(Disjoint)
print(catFamily.isDisjoint(with: reptile))
