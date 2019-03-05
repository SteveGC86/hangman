require 'spec_helper'
require_relative '../library'

RSpec.describe Library do
  let(:file_path) { 'spec/fixtures/words.txt' }

  describe '#generate' do
    before do
      allow(subject).to receive(:file_path).and_return(file_path)
    end

    context 'when file does not exist' do
      let(:file_path) { 'spec/fixtures/doesntexist.txt' }

      it 'blows up' do
        expect { subject.generate }.to raise_exception(Errno::ENOENT)
      end
    end

    it 'returns a word' do
      expect(subject.generate).to be_a(String)
    end

    it 'returns a uniq word' do
      first_word = subject.generate
      second_word = subject.generate

      expect(first_word).not_to eq(second_word)
    end
  end
end
