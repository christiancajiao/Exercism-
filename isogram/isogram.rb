=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram 
    def isogram?(input)
       
        char_map = {}
        arr = input.downcase.split('')
        for char in arr
            if !char_map[char]
                char_map[char] = 1
            else
                char_map[char] = char_map[char] + 1
            end
        end
        
        repetidas = 0

        for n in char_map.values
            if n > 1 
                repetidas = repetidas +  1
            end
        end
      
        if repetidas >= 2 
            puts "is not an isogram"
        else
            puts 'is an isogram'
        end
    end
end

