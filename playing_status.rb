class PlayingStatus
  attr_reader :playing

  def initialize(status)
    @playing = status
  end
  
  def start
    @playing = true
  end

  def stop
    @playing = false
  end
end