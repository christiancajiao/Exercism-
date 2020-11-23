=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

module ResistorColorDuo
    VALUES = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
  
    def self.value(colors)
      "#{VALUES.index(colors[0])}#{VALUES.index(colors[1])}".to_i
  
    end
  end
