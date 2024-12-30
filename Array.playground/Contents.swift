import Foundation

// MARK: - 별점 계산 함수
/// 주어진 평점을 5점 만점 기준으로 변환하고 별 개수와 설명 문자열을 반환
func normalizedStarRating(forRating rating: Float, ofPossiblesTotal total: Float) -> (Int, String) {
    let fraction = rating / total // 평점의 비율 계산
    let ratingOutOf5 = fraction * 5 // 5점 만점으로 변환
    let roundedRating = round(ratingOutOf5) // 반올림
    let numberOfStars = Int(roundedRating) // 정수형으로 변환
    let ratingString = "\(numberOfStars) Star Movie" // 별점 설명 문자열 생성
    return (numberOfStars, ratingString)
}

// 함수 사용 예시
let (ratingNumber, ratingString) = normalizedStarRating(forRating: 4.5, ofPossiblesTotal: 10)
print("별점: \(ratingNumber), 설명: \(ratingString)")

// MARK: - 영화 목록 관리
var moviesToWatch: [String] = [
    "Star Wars", "The Matrix", "Interstellar",
    "The Dark Knight", "The Avengers",
    "The Lion King", "The Incredibles"
]

// 영화 목록 출력
print("초기 영화 목록:", moviesToWatch)

// 특정 영화 접근
print("첫 번째 영화:", moviesToWatch[0])
print("두 번째 영화:", moviesToWatch[1])
print("세 번째 영화:", moviesToWatch[2])

// 영화 목록 개수 출력
print("볼 영화 총 개수:", moviesToWatch.count)

// 영화 삽입 및 삭제
moviesToWatch.insert("jongmin", at: 1) // 특정 위치에 영화 삽입
print("영화 삽입 후 목록:", moviesToWatch)

let removedItem = moviesToWatch.remove(at: 2) // 특정 위치의 영화 삭제
print("삭제된 영화:", removedItem)
print("영화 삭제 후 목록:", moviesToWatch)
print("삭제 후 볼 영화 총 개수:", moviesToWatch.count)

// 첫 번째와 마지막 영화 접근
if let firstMovie = moviesToWatch.first {
    print("첫 번째로 볼 영화:", firstMovie)
} else {
    print("영화가 없습니다.")
}

print("마지막으로 볼 영화:", moviesToWatch.last ?? "영화가 없습니다.")

// MARK: - 영화 추천 및 대체
// 추천 영화 목록 추가
let spyMovieSuggestion: [String] = ["The Avengers", "The Dark Knight"]
moviesToWatch += spyMovieSuggestion // 영화 목록에 추가
print("추천 영화 추가 후 목록:", moviesToWatch)
print("총 영화 개수:", moviesToWatch.count)

// Star Wars 영화 시리즈로 대체
var starWarsMovies = Array<String>(repeating: "Star Wars: ", count: 5)
starWarsMovies[0] += "A New Hope"
starWarsMovies[1] += "The Empire Strikes Back"
starWarsMovies[2] += "Return of the Jedi"
starWarsMovies[3] += "The Force Awakens"
starWarsMovies[4] += "The Last Jedi"

print("Star Wars 시리즈:", starWarsMovies)

// 기존 목록의 일부를 Star Wars 시리즈로 대체
moviesToWatch.replaceSubrange(2...4, with: starWarsMovies)
print("영화 대체 후 목록:", moviesToWatch)


// 불변(immutable) 배열 NSArray
let moviesToWatchCopy = moviesToWatch
print(moviesToWatchCopy)

// 가변(mutable) NSMutableArray
var moviesToWatchCopy2 = moviesToWatch
moviesToWatchCopy2.append("The Force Awakens")
print(moviesToWatchCopy2)


