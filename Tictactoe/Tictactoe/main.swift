//
//  main.swift
//  Tictactoe
//
//  Created by 이종민 on 1/3/25.
//

import Foundation

// 게임 보드를 표현하는 열거형
enum Piece {
    case empty
    case x
    case o
}

// 게임 상태를 표현하는 프로토콜
protocol GameState {
    var currentPlayer: Piece { get }
    // [[Piece]] 는 타입별칭을 만들 수 있다.
    var board: [[Piece]] { get }
    func isValidMove(row: Int, column: Int) -> Bool
}

// 게임 로직을 담당하는 클래스
class TicTacToe: GameState {
    var board: [[Piece]]
    var currentPlayer: Piece
    
    init() {
        board = [[.empty, .empty, .empty],
                 [.empty, .empty, .empty],
                 [.empty, .empty, .empty]]
        currentPlayer = .x // x가 첫 번째 플레이어
    }
    
    func isValidMove(row: Int, column: Int) -> Bool {
        // TODO: isValidMove 메서드 구현
        guard row >= 0, row < 3, column >= 0, column < 3 else {
            return false
        }
        return board[row][column] == .empty
    }
    
    func makeMove(row: Int, column: Int) -> Bool {
        // TODO: 플레이어 이동 메서드 구현
        guard isValidMove(row: row, column: column) else {
            return false
        }
        board[row][column] = currentPlayer
        //플레이어 전환하기
        currentPlayer = (currentPlayer == .x) ? .o : .x
        return true
    }
    
    func checkWinner() -> Piece? {
        // 행과 열에서 승리 확인
        for i in 0..<3 {
            if board[i][0] != .empty, board[i][0] == board[i][1], board[i][1] == board[i][2] {
                return board[i][0]
            }
            if board[0][i] != .empty, board[0][i] == board[1][i], board[1][i] == board[2][i] {
                return board[0][i]
            }
        }
        
        // 대각선에서 승리 확인
        if board[0][0] != .empty, board[0][0] == board[1][1], board[1][1] == board[2][2] {
            return board[0][0]
        }
        if board[0][2] != .empty, board[0][2] == board[1][1], board[1][1] == board[2][0] {
            return board[0][2]
        }
        
        // 무승부 확인 (보드에 빈 칸이 없는 경우)
        if board.allSatisfy({ row in row.allSatisfy({ $0 != .empty }) }) {
            return .empty
        }
        
        return nil // 아직 승자가 없음
    }
    
    func printBoard() {
        // 보드를 출력하는 코드
        for row in board{
            let rowString = row.map { piece in
                switch piece {
                case.empty: return "."
                case .x: return "X"
                case .o: return "O"
                }
            }.joined(separator: " ")
            print(rowString)
        }
    }
}

var game = TicTacToe()

while true {
    game.printBoard()
    print("\n현재 플레이어: \(game.currentPlayer)")
    
    print("행 입력 (0-2)('q' 입력시 종료): ", terminator: "")
    let rowInput = readLine() ?? ""
    if rowInput == "q" { break }
    guard let row = Int(rowInput) else { continue }
    
    print("열 입력 (0-2)('q' 입력시 종료): ", terminator: "")
    let colInput = readLine() ?? ""
    if colInput == "q" { break }
    guard let column = Int(colInput) else { continue }
    
    if !game.makeMove(row: row, column: column) {
        print("잘못된 위치입니다. 다시 시도해주세요.")
        continue
    }
    
    if let winner = game.checkWinner() {
        game.printBoard()
        if winner == .empty {
            print("무승부")
        } else {
            print("\(winner) 승리")
        }
        break
    }
}
