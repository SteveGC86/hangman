require 'pry'
require 'spec_helper'
require_relative '../game'

RSpec.describe Game do
  describe '.initialize' do
    it 'sets instance variables' do
      new_instance = described_class.new
      expect(new_instance.instance_variable_get(:@correct)).to eq([])
      expect(new_instance.instance_variable_get(:@incorrect)).to eq([])
      expect(new_instance.instance_variable_get(:@cipher)).to be_kind_of(Cipher)
      expect(new_instance.instance_variable_get(:@reporter)).to be_kind_of(GameReporter)
    end

    it 'passes self to game reporter initializer' do
      allow(GameReporter).to receive(:new).and_return('123')
      new_instance = described_class.new
      expect(new_instance.instance_variable_get(:@reporter)).to eq('123')
    end
  end

  it 'does magic' do
    foo = double(:abc, bar: '123')
    expect(foo.bar).to eq('123')
  end

  describe '#start' do
    it 'prints out information that game has started' do
      expect(STDOUT).to receive(:puts).with('THE GAME HAS STARTED')
      subject.start
    end

    it 'sets the word variable' do
      foo = instance_double(Library, generate: 'star')
      allow(Library).to receive(:new).and_return(foo)
      # allow_any_instance_of(Library).to receive(:generate).and_return('star')
      subject.start
      expect(subject.word).to eq 'star'
      expect(subject.word).to_not be_nil
      expect(subject.word).to be_kind_of(String)
    end
  end
end
