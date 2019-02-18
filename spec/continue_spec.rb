require 'spec_helper'
require_relative '../game'

RSpec.describe Continue do
  subject { Game.new(status) }
  let(:status) { true }

  describe '#won' do
    it 'gives winning status' do
      expect(game.won).to eq(true)
    end
  end
end