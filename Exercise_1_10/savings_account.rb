module SavingsAccount
    def self.interest_rate(balance)
      if balance < 0 
        return -3.213
      elsif balance >= 0 && balance < 1000 
        return 0.5
      elsif balance >= 1000 && balance < 5000
        return 1.621
      else return 2.475
      end
    end
  
    def self.annual_balance_update(balance)
      balance > 0 ? balance + self.interest_rate(balance)*balance/100 : balance - self.interest_rate(balance)*balance/100
    end
  
    def self.years_before_desired_balance(current_balance, desired_balance)
      min_year = 0
      while current_balance < desired_balance 
        current_balance = self.annual_balance_update(current_balance)
        min_year += 1
      end
      return min_year
    end
  end
  

  #puts SavingsAccount.interest_rate(200.75)
  #puts SavingsAccount.years_before_desired_balance(200.75, 214.88)
  puts SavingsAccount.annual_balance_update(-1_000.0)
  #=> 14