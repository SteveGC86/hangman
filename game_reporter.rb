class GameReporter
  def initialize(game)
    @game = game
  end

  def report
    if @game.won?
      puts "Congratulations you guessed the word #{@word}"
    elsif @game.lost?
      puts "Sorry too many guesses, the man is hanging"
    else
      puts @game.encrypted_word
    end
  end
end