import Foundation

enum PoolBallType: String {
    case solid
    case stripe
    case black
}

func poolBallType(forNumber number: Int) -> PoolBallType? {
    if number < 8 && number > 0 {
        return .solid
    } else if number > 8 && number < 16 {
        return .stripe
    } else if number == 8 {
        return .black
    } else {
        return nil
    }
}


func printBallDetails(ofNumber number:Int) {
    let possibleBallType = poolBallType(forNumber: number)
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

let two = poolBallType(forNumber: 2)
let eight = poolBallType(forNumber: 8)
let twelve = poolBallType(forNumber: 12)

let zero = poolBallType(forNumber: 0)
let sixteen = poolBallType(forNumber: 16)

printBallDetails(ofNumber: 2) // 2 - solid
printBallDetails(ofNumber: 8) // 8 - black
printBallDetails(ofNumber: 12) // 12 - stripe
printBallDetails(ofNumber: 0) // 0 is not a valid pool ball number
printBallDetails(ofNumber: 16) // 16 is not a valid pool ball number


var isDarkMode : Bool = false

if (isDarkMode == true){
    print("다크모드 입니다")
} else {
    print("다크모드가 아닙니다.")
}

if isDarkMode {
    print("다크모드")
} else {
    print("다크모드 아님")
}

//삼항연산자
var title : String = isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title : \(title)")
