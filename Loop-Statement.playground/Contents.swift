import Foundation

// For
let ledZeppelin = ["Robert", "Jimmy", "John", "John Paul"]

for musician in ledZeppelin {
    print(musician)
}

for value in 1...12 {
    print("5 x \(value) = \(value * 5)")
}

let zeppelinByInstrument = ["vocals": "Robert",
                            "lead guitar": "Jimmy",
                            "drums": "John",
                            "bass guitar": "John Paul"]

for (key, value) in zeppelinByInstrument {
    print("\(value) plays \(key)")
}

ledZeppelin.forEach { print($0)}

zeppelinByInstrument.forEach { (key, value) in print("\(value) plays \(key)")}

// While
enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int.random(in: 0...1))!
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInARow = 0
    var currentFlip: CoinFlip = CoinFlip.flipCoin()
    print("currentFlip.rawValue: \(currentFlip.rawValue)")
    while currentFlip == .heads {
        numberOfHeadsInARow += 1
        currentFlip = CoinFlip.flipCoin()
    }
    
    return numberOfHeadsInARow
}

let noOfHeads = howManyHeadsInARow()
print(noOfHeads)

// foreach 반복문

// 콜렉션 : 데이터를 모아둔 것
// 배열, 딕셔너리, 튜플, 셋
var myArray : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray {
    print("item: \(item)")
}

for item in myArray where item > 5 {
    print("5 초과의 item: \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수 : \(item)")
}
