struct Player {
    var name: String
    var highScore: Int = 0
    var rank: Int = 0

    init(_ name: String) {
        self.name = name
    }
}
extension Player {
    mutating func updateScore(_ newScore: Int) {
        
        if highScore < newScore {
            print("\(newScore)! Nuevo puntaje para \(name)! 🎉")
            highScore = newScore
        }
    }
}


print("Jugador 1 introduce tu nombre")
var np1 = readLine()!
var player1 = Player(np1)
var highScoreP1 = Int.random(in: 0..<101)
player1.updateScore(highScoreP1)

print("  ")
print("Jugador 2 introduce tu nombre")
var np2 = readLine()!
var player2 = Player(np2)
var highScoreP2 = Int.random(in: 0..<101)
player2.updateScore(highScoreP2)

print("  ")
print("- - - Puntajes - - -")
if(player1.highScore >= player2.highScore){
  player1.rank = 1
  player2.rank = 2
  print("\(player1)")
  print("\(player2)")
}
else if(player1.highScore <= player2.highScore){
  player2.rank = 1
  player1.rank = 2
  print("\(player2)")
  print("\(player1)")
}
else{
  print("\(player1)")
  print("\(player2)")
   player1.rank += 0
   player2.rank += 0
}




