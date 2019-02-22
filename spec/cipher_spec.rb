require 'spec_helper'
require_relative '../cipher'

describe Cipher do
  describe '#encrypt' do
    let(:word) { 'marketplacer' }
    let(:guessed_letters) { ['m',  'a'] }

    it 'it returns the word with guessed letters and underscores' do
      expect(subject.encrypt(word, guessed_letters)).to eq("ma______a___")
    end
  end
end
