require 'spec_helper'
require_relative '../hangman'
require_relative '../library'
require_relative '../words.txt'

Rspec.describe word_generator do
  let!(:file) { words.txt }
  let(:content) { 'celebratory' }
  describe 'word picker' do
    it 'Checks file content' do
      expect(file).to have_file_content(content)
    end

    it
  end
end