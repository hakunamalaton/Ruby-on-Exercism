=begin
Write your code for the 'Allergies' exercise in this file. Make the tests in
`allergies_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/allergies` directory.
=end
class Allergies
    ALLERGIES = ['eggs', 'peanuts', 'shellfish', 'strawberries',
      'tomatoes', 'chocolate', 'pollen', 'cats']
    def initialize(score)
      @allergies_score = score - score/256 * 256
      @list_allergies = []
    end
  
    def allergic_to?(allergy)
      list if @allergies_score > 0
      @list_allergies.include?(allergy)
    end
    
    def list
      return [] if @allergies_score < 1
      max_allergy = Math.log(@allergies_score,2).to_i 
      while @allergies_score > 0
        @list_allergies += [ALLERGIES[max_allergy]]
        @allergies_score -= 2**max_allergy
        max_allergy = Math.log(@allergies_score,2).to_i if @allergies_score > 0
      end
      @list_allergies
    end
  end
  