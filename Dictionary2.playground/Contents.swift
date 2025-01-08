//Dictionary

var anyDictionary: Dictionary<String, Any> = [String: Any]()

anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 123

print(anyDictionary)

anyDictionary["someKey"] = "dictionary"
print(anyDictionary)

anyDictionary.removeValue(forKey: "someKey")
print(anyDictionary)

//removeValue와 동일한 기능을 함 (nil을 할당하면 값이 지워짐)
anyDictionary["someKey"] = nil
print(anyDictionary)

//타입 불일치로 대입불가
//현재 anyDictionary["anotherKey"]의 반환타입은 Any? (Optional)임
//let someValue: String = anyDictionary["anotherKey"]
//옵셔널 바인딩 또는 강제 언래핑, 옵셔널 체이닝 등으로 값을 안전하게 대입할 수 있다. - Optional 참고

