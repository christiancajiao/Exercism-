=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series 
    def initialize(string_of_numbers)
        @string_of_numbers = string_of_numbers 
    end

    def string_of_numbers
        @string_of_numbers
    end
    def slices(n)
        if string_of_numbers.length < n
            raise ArgumentError.new("n should be smaller than string_of_numbers.length")
        end
        new_arr = []
        string_of_numbers.split('').each_cons(n) { |a| new_arr.push(a.join('')) }
        return new_arr
    end
end

prueba = Series.new('780159')
prueba.slices(2)