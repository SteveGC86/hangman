class Playing_status
  attr_accessor :playing

  def initialize(status)
    @playing = status
  end

  def check
    @playing
  end
end