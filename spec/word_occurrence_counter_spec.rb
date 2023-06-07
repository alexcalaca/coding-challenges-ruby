require_relative '../lib/word_occurrence_counter'
require 'rspec'

describe WordOccurrenceCounter do
  let(:counter) { WordOccurrenceCounter.new }

  describe '#count_word_occurrences' do
    it 'returns a hash with word occurrences' do
      sentence = "I love Ruby, Ruby is a great language!"
      expected_result = { "I" => 1, "love" => 1, "Ruby" => 2, "is" => 1, "a" => 1, "great" => 1, "language" => 1 }

      result = counter.count_word_occurrences(sentence)

      expect(result).to eq(expected_result)
    end

    it 'returns an empty hash for an empty sentence' do
      sentence = ""
      expected_result = {}

      result = counter.count_word_occurrences(sentence)

      expect(result).to eq(expected_result)
    end    
  end
end
