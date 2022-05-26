class Solver
  # rubocop:disable  Naming/MethodParameterName
  def factorial(n)
    raise Exception if n.negative?

    counter = 1
    (1..n).each do |number|
      counter *= number
    end

    counter
  end
  # rubocop:ensable  Naming/MethodParameterName

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    fizz = (n % 3).zero?
    buzz = (n % 5).zero?
    return 'fizzbuzz' if fizz && buzz
    return 'fizz' if fizz
    return 'buzz' if buzz

    n.to_s
  end
  # rubocop:enable  Naming/MethodParameterName
end
