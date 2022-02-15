
class SimpleCalculator
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze # imutable object
    UnsupportedOperation = StandardError
  
    def self.calculate(first_operand, second_operand, operation)
      unless first_operand.is_a? Integer and second_operand.is_a? Integer and operation.is_a? String
          raise ArgumentError
      end
      case operation
        when '+' then "#{first_operand} + #{second_operand} = #{first_operand+second_operand}"
        when '*' then "#{first_operand} * #{second_operand} = #{first_operand*second_operand}"
        when '/' 
        if second_operand == 0 
            return "Division by zero is not allowed."
          end
          "#{first_operand} / #{second_operand} = #{first_operand/second_operand}"
        else 
          raise SimpleCalculator::UnsupportedOperation
      end
    end
  end
  