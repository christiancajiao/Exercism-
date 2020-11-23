=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end


class Scrabble < Struct.new(:text)

    def score 

        valores = {
        1 => ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
        2 => ['d', 'g' ],
        3 => ['b', 'c', 'm', 'p'],
        4 => ['f', 'h', 'v', 'w', 'y'],
        5 => ['k'],
        6 => ['j', 'x'],
        7 => ['q', 'z'],
        }
        arr_texto = text.downcase.split('')
        h_palabras_contadas = {}
      
        for letra in arr_texto do
            for value in valores.values
        
                if value.include? letra
                    if h_palabras_contadas[letra] == nil
                        h_palabras_contadas[letra] = valores.key(value)
                    elsif h_palabras_contadas[letra] >= 1
                        h_palabras_contadas[letra] = h_palabras_contadas[letra] + valores.key(value)
                    end
               
                end
            end
        end
       return h_palabras_contadas.values.reduce(:+)
    end

end

puts Scrabble.new('\t\n').score
