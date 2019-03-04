class Library
  def generate
    content = File.readlines 'words.txt'
    word_sampler(content)
  end

  def word_sampler(content)
    content.sample
  end
end

