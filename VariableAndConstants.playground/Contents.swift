let phrase: String = "The quick brown fox jumps over the lazy dog"
let numberOfFoxes: Int = (1+1)
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
print(averageCharactersPerWord) // 3.8888888

var anotherPhrase: String = phrase
anotherPhrase = "Hello World!"
print(phrase)
print(anotherPhrase)

var phraseInfo = "The pharse" + "has : "

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"

var i = 1
i += 1
print(i)

print("Number of characters: \(phrase.count)")

let multilineExpanation = """
this
  is
never
 that

!(*@&#!(*@&#^$%/\\
"""

print(multilineExpanation)

let phraseAreEqual = phrase == anotherPhrase
print(phraseAreEqual)

let pharaseHas43Characters = phrase.count == 43
print(pharaseHas43Characters)

let phraseHasMoreThan43Characters = phrase.count > 43
print(phraseHasMoreThan43Characters)
