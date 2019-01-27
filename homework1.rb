class Homework1
  def self.compute_factorial_normally(num)
    sum = 1
    for i in 1..num
      sum = sum * i
    end
    return sum
  end

  def self.compute_factorial_from_formula(num)
    return (Math.sqrt(2 * Math::PI * num) * (num / Math::E)**num).round(3)
  end

  def self.compute_error(normal, formula)
    diff = normal - formula
    return ((diff / normal) * 100).round(2)
  end

  def self.print_results_table
    puts('n       n!             formula result      error')

    i = 1
    while i <= 15
      if i >= 10
        print("#{i}      ")
      else
        print(" #{i}      ")
      end
      normal = compute_factorial_normally(i)
      print(normal)
      (15 - normal.to_s.size).times do
        print(' ')
      end
      formula = compute_factorial_from_formula(i)
      print(formula)
      (20 - formula.to_s.size).times do
        print(' ')
      end
      error = compute_error(normal, formula)
      puts("#{error}%")

      i += 1
    end
  end

  print_results_table

end

# (radical 2 pi n) (n/e)^n