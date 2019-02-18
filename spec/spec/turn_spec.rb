require 'spec_helper'
require_relative '../turn'
require_relative '../guess'

RSpec.describe Turn do
  subject { Guess.new }
  let(:word) { "follow" }
  let(:correct_letter) { "o" }

  describe '#check' do
    it 'checks if a word contains a letter' do
      expect()
    end
  end
end