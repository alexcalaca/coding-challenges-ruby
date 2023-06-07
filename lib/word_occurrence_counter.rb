class WordOccurrenceCounter
  def count_word_occurrences(sentence)
    word_counter = Hash.new(0)
    
    words = sentence.scan(/\w+/)

    words.each do |word|
      word_counter[word] += 1
    end
    
    word_counter
  end
end

sentence = "I love Ruby, Ruby is a great language!"
counter = WordOccurrenceCounter.new
puts counter.count_word_occurrences(sentence)
