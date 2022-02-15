=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
    def self.clean(phone_number)
      phone_format = phone_number.gsub(/[^0-9]/,"")
      phone_format
    end
  end
  

  p PhoneNumber.clean("(223) 456-7890")