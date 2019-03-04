require 'pry'
require 'spec_helper'
require_relative '../playing_status'

RSpec.describe PlayingStatus do
  subject { PlayingStatus.new(initial_status) }
  let(:initial_status) { true }

  before do
  end

  describe '#start' do
    # it 'changes playing to true' do
    #   binding.pry
    #   # subject.start
    #   expect(subject.playing).to eq(true)
    # end
  end

  describe '#stop' do
    it 'changes playing to false' do
      expect { subject.stop }.to change { subject.playing }.from(true).to(false)
      # expect { subject.stop }.to raise_error(StandardError)

      subject.stop
      expect(subject.playing).to eq(true)
      # expect(subject.stop).to eq(false)
    end
  end
end