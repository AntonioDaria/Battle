class Game

  attr_reader :player1, :player2, :players
  attr_accessor :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player1
  end

  def attack(player1, player2)
    player2.receive_damage
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch
    @turn = opponent_of(@turn)
  end

  def opponent_of(person)
    @players.select { |player| player != person }.first
  end
end
