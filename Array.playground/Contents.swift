import Foundation

func normalizedStarRating(forRating rating: Float, ofPossiblesTotal total: Float) -> (Int, String){
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars, ratingString)
}

let ratingAndDisplayString = normalizedStarRating(forRating: 4.5, ofPossiblesTotal: 10)
let ratingNumber = ratingAndDisplayString.0
let ratingString = ratingAndDisplayString.1

print("Rating: \(ratingNumber), Rating String: \(ratingString)")

var moviesToWatch: Array<String> = Array()
moviesToWatch.append("Star Wars")
moviesToWatch.append("The Matrix")
moviesToWatch.append("Interstellar")
moviesToWatch.append("The Dark Knight")
moviesToWatch.append("The Avengers")
moviesToWatch.append("The Lion King")
moviesToWatch.append("The Incredibles")

print(moviesToWatch)

print(moviesToWatch[0])
print(moviesToWatch[1])
print(moviesToWatch[2])

print(moviesToWatch.count)

moviesToWatch.insert("jongmin", at: 1)
print(moviesToWatch[1])

let removedItem = moviesToWatch.remove(at: 2)
print(removedItem)
print(moviesToWatch[2])
print(moviesToWatch)
print(moviesToWatch.count)

let firstMovieToWatch = moviesToWatch.first
print(firstMovieToWatch ?? "No Movie")

let lastMovieToWatch = moviesToWatch.last
print(lastMovieToWatch as Any)

let spyMovieSuggestion : [String] = ["The Avengers", "The Dark Knight"]
moviesToWatch += spyMovieSuggestion
print(moviesToWatch)
print(moviesToWatch.count)

var starWarsMovies = Array<String>(repeating: "Star Wars: ", count: 5)
starWarsMovies[0] += "A New Hope"
starWarsMovies[1] += "The Empire Strikes Back"
starWarsMovies[2] += "Return of the Jedi"
starWarsMovies[3] += "The Force Awakens"
starWarsMovies[4] += "The Last Jedi"

print(starWarsMovies)
print("============")
moviesToWatch.replaceSubrange(2...4, with: starWarsMovies)
print(moviesToWatch)
