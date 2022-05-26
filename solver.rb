class Solver
  def factorial(n)
    raise Exception.new() if n < 0 
    counter = 1
    (1..n).each do |number|
    counter *= number
    end

    counter
  end
  def reverse(word); end
  def fissbuzz(n); end
end