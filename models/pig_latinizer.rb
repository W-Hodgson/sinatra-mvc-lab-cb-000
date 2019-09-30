class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize

    word_array = @text.split(' ')

    latinized_words = word_array.map do |word|
      word << word[0]
      arr = word.split('')
      arr.shift
      arr << "ay"
      arr.join('').downcase.capitalize
    end

    latin = latinized_words.join(' ')
    latin
  end
end
