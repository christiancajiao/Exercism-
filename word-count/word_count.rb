=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
#[^'\p{L}\d]+
class Phrase 
    def initialize(word)
        @word = word  
    end
    def word
        @word
    end
    def word_count 

        char_map = {}
        arr = word.downcase.scan(/\w+'\w|\w+/)
        for char in arr
            if !char_map[char]
                char_map[char] = 1
            else
                char_map[char] = char_map[char] + 1
            end
        end
        return char_map
    end
end
