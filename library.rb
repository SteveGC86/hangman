class Library
  def generate
    content = File.readlines(file_path)
    word_sampler(content)
  end

  private

  def file_path
    'words.txt'
  end

  def word_sampler(content)
    content.sample
  end
end
