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
    case canOnlyMoveToAppropriateState
}

class Meal {
    private(set) var state: MealState = .initial
    
    func change(to newState: MealState) throws {
        switch (state, newState) {
        case (.initial, .buyIngredients),
            (.buyIngredients, .prepareIngredients),
            (.prepareIngredients, .cook),
            (.cook, .plantUp),
            (.plantUp, .serve):
            state = newState
        default:
            throw MealError.canOnlyMoveToAppropriateState
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
} catch let error {
    print(error)
}
