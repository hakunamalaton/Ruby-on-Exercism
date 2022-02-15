ArmstrongNumbers = [0]
num = 12

  arm_num = 0
  i = 0
  while arm_num <= num 
  num.to_s.split("").each {
    |digit|
    arm_num += digit.to_i ** i
  }
    ArmstrongNumbers << num if arm_num == num
    break if arm_num >= num
    if arm_num < num
      i += 1
      arm_num = 0
    end
  end
