=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end
class HighScores
  #intente class HighScores < Struct.new(:scores)
  #tambien attr_accessor(:scores)
    def initialize(scores)
      @scores = scores
    end
    #getter
    def scores
        @scores
    end
  
    def latest

       scores[-1]
    end
  
    def personal_best
      scores.max
    end
  
    def personal_top_three
      scores.max(3)
    end
  
    
  end


  prueba = HighScores.new([30, 50, 20, 70])
  prueba.latest