import Foundation

enum CompassPoint {
    case north
    case east
    case south
    case west
}

func lookTowards(_ direction: CompassPoint) {
    switch direction {
    case .north: print("North")
    case .south: print("South")
    case .east: print("East")
    case .west: print("West")
    }
}

lookTowards(.north)


enum Item {
    case key
    case lockedDoor
    case openDoor
    case bluntKnife
    case sharpeningStone
    case sharpKnife
}

func combine(_ firstItem: Item, with secondItem: Item) -> Item? {
    switch (firstItem, secondItem) {
    case (.key, .lockedDoor):
        print("문을 열었습니다!")
        return .openDoor
    case (.bluntKnife, .sharpeningStone):
        print("칼이 날카로워졌습니다.")
        return .sharpKnife
    default:
        print("\(firstItem)과 \(secondItem)은 결합할 수 없습니다.")
        return nil
    }
}

let door = combine(.key, with: .lockedDoor)
let oilAndWater = combine(.bluntKnife, with: .lockedDoor)
let knifeAndSharpening = combine(.bluntKnife, with: .sharpeningStone)



