# Lauren Rose
# ITEC 360 - Data Structures and Analysis of Algorithms
# Department of Information Technology
# Radford University
#
# This program investigates the accuracy
# of the factorial formula:
# (sqrt(2 * pi * n)) * (n/e)^n
class Homework1
  def self.compute_factorial_normally(num)
    sum = 1
    (1..num).each do |i|
      sum *= i
    end
    sum
  end

  def self.compute_factorial_from_formula(num)
    (Math.sqrt(2 * Math::PI * num) * (num / Math::E)**num).round(2)
  end

  def self.compute_error(normal, formula)
    diff = normal - formula
    ((diff / normal) * 100).round(2)
  end

  def self.print_header
    print(' n      n!')
    28.times { print(' ') }
    print('formula result')
    18.times { print(' ') }
    puts('error')
    80.times { print('-') }
    puts("\n")
  end

  def self.print_results_table
    i = 1
    while i <= 20
      print i >= 10 ? "#{i}      " : " #{i}      "
      normal = compute_factorial_normally(i)
      print(normal)
      (30 - normal.to_s.size).times { print(' ') }
      formula = compute_factorial_from_formula(i)
      print(formula)
      (32 - formula.to_s.size).times { print(' ') }
      error = compute_error(normal, formula)
      puts("#{error}%")
      i += 1
    end
  end
  print_header
  print_results_table
end