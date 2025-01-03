import Foundation

enum MealState {
    case initial
    case buyIngredients
    case prepareIngredients
    case cook
    case plantUp
    case serve
}

enum MealError : Error {
    case invalidStateTransition
    case canOnlyMoveToAppropriateState(from: MealState, to: MealState)
    case tooMuchSalt
    case wrongStateToAddSalt
}

class Meal {
    private(set) var state: MealState = .initial
    private(set) var saltAdded: Int = 0
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plantUp),
            (.plantUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState(from: state, to: state)
        }
    }
    
    func addSalt() throws {
        print("addSalt >> \(saltAdded) / \(state)")
        if saltAdded >= 5 {
            throw MealError.tooMuchSalt
        } else if .initial == state || .buyIngredients == state {
            throw MealError.wrongStateToAddSalt
        } else {
            saltAdded += 1
        }
    }
    
    func buyIngredients() throws {
        try change(to: .buyIngredients)
    }
    func prepareIngredients() throws {
        try change(to: .prepareIngredients)
    }
    func cook() throws {
        try change(to: .cook)
    }
    func plantUp() throws {
        try change(to: .plantUp)
    }
}

let dinner = Meal()

do {
    try dinner.change(to: .buyIngredients)
    try dinner.change(to: .prepareIngredients)
    try dinner.change(to: .cook)
    try dinner.change(to: .plantUp)
    try dinner.change(to: .serve)
    print("dinner is complete")
} catch MealError.canOnlyMoveToAppropriateState (let from, let to) {
    print("\(from) -> \(to) 상태로 이동할 수 없습니다.")
} catch MealError.tooMuchSalt {
    print("짜다!")
} catch MealError.wrongStateToAddSalt {
    print("이 단계에서는 소금을 추가할 수 없습니다.")
}

// 학교 - ex) 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
print("yourschool", yourSchool)

// enum은 값을 가질수도있다.
enum Grade : Int {
    case first = 1
    case second = 2
}

var yourGrade = Grade.first
print("yourGrade : \(yourGrade)")
yourGrade = Grade.second
print("yourGrade : \(yourGrade)")

