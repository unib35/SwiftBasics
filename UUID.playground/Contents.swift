import Foundation

let uuid = UUID()
print(uuid)
print(uuid.uuidString)


// 원래 바이너리 데이터
let rawUUID = uuid.uuid
// 튜플을 배열로 변환
let uuidArray = [rawUUID.0, rawUUID.1, rawUUID.2, rawUUID.3, rawUUID.4, rawUUID.5, rawUUID.6, rawUUID.7,
                 rawUUID.8, rawUUID.9, rawUUID.10, rawUUID.11, rawUUID.12, rawUUID.13, rawUUID.14, rawUUID.15]

// 각 바이트를 16진수로 출력
let hexBytes = uuidArray.map { String(format: "%02X", $0) }.joined(separator: " ")
print("UUID 원래 데이터 (16진수):", hexBytes)

//uuid
let cUUID: uuid_t = (0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF,
                     0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF)

// Swift UUID 객체로 변환
let swiftUUID = UUID(uuid: cUUID)
print(swiftUUID) // 출력: "12345678-90AB-CDEF-1234-567890ABCDEF"

// 유효한 UUID 문자열
let uuidString = "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"

// UUID 객체 생성
if let uuid = UUID(uuidString: uuidString) {
    print("UUID 생성 성공:", uuid)
} else {
    print("UUID 생성 실패")
}
