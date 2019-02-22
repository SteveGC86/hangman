class GameReporter
  def initialize(game)
    @game = game
  end

  def report
    if @game.won?
      puts "Congratulations you guessed the word '#{@game.word}''"
    elsif @game.lost?
      puts "Sorry too many guesses, the man is hanging. The word was '#{@game.word}'"
    else
      puts @game.encrypted_word
    end
  end
end