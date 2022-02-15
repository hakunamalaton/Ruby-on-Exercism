=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
    def self.tally(matches)
        @match_point = {}
        @output_file = "Team                           | MP |  W |  D |  L |  P\n"
        return @output_file if matches == "\n"
        matches.each_line {
            |match|
            in4_per_match = match.split(";")
            @match_point[in4_per_match[0]] = Hash.new(0) if @match_point[in4_per_match[0]] == nil
            @match_point[in4_per_match[1]] = Hash.new(0) if @match_point[in4_per_match[1]] == nil
            @match_point[in4_per_match[0]]["MP".to_sym] += 1
            @match_point[in4_per_match[1]]["MP".to_sym] += 1
            if in4_per_match[2] == "win\n"
                @match_point[in4_per_match[0]]["W".to_sym] += 1
                @match_point[in4_per_match[0]]["P".to_sym] += 3
                @match_point[in4_per_match[1]]["L".to_sym] += 1
                @match_point[in4_per_match[1]]["P".to_sym] += 0
            elsif in4_per_match[2] == "loss\n"
                @match_point[in4_per_match[0]]["L".to_sym] += 1
                @match_point[in4_per_match[0]]["P".to_sym] += 0
                @match_point[in4_per_match[1]]["W".to_sym] += 1
                @match_point[in4_per_match[1]]["P".to_sym] += 3
            else
                @match_point[in4_per_match[0]]["D".to_sym] += 1
                @match_point[in4_per_match[0]]["P".to_sym] += 1
                @match_point[in4_per_match[1]]["D".to_sym] += 1
                @match_point[in4_per_match[1]]["P".to_sym] += 1
            end
        }
        @match_point = @match_point.sort { |obj1,obj2|
            [obj2[1]["P".to_sym], obj1[0]] <=> [obj1[1]["P".to_sym], obj2[0]]
        }
        @match_point.each {
            |ele|
            @output_file << ele[0].ljust(30) << " |"  << ele[1]["MP".to_sym].to_s.rjust(3) << " |"
            @output_file += ele[1]["W".to_sym] != nil ?  ele[1]["W".to_sym].to_s.rjust(3) << " |" : 0.to_s.rjust(3) << " |"
            @output_file += ele[1]["D".to_sym] != nil ?  ele[1]["D".to_sym].to_s.rjust(3) << " |" : 0.to_s.rjust(3) << " |"
            @output_file += ele[1]["L".to_sym] != nil ?  ele[1]["L".to_sym].to_s.rjust(3) << " |" : 0.to_s.rjust(3) << " |"
            @output_file += ele[1]["P".to_sym] != nil ?  ele[1]["P".to_sym].to_s.rjust(3) : 0.to_s.rjust(3) 
            @output_file << "\n"
            
        }
        @output_file
    end
end