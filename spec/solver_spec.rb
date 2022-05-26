require './solver'

class Solver
  def factorial(n); end
end

describe Solver do
  context 'method factorial' do
    it 'should take one argument, an integer N, and return the factorial for that number' do
      solver = Solver.new
      n = 4

      result = solver.factorial(n)

      expect(result).to eq(4 * 3 * 2 * 1)
    end

    it 'should be so that factorial of 0 is 1' do
      solver = Solver.new
      n = 0

      result = solver.factorial(n)

      expect(result).to eq(1)
    end
    it 'should only accepts 0 and positive integers,' \
       'so if a negative integer is given it should raise an exception' do
      solver = Solver.new
      n = -1

      expect { solver.factorial(n) }.to raise_exception
    end
  end
  context 'method reverse' do
    it 'should take one argument, a string word, and return word reversed' do
      solver = Solver.new()
      word = 'hello'

      result = solver.reverse(word)

      expect(result).to eq('olleh')
  end
  # Create a method called fizzbuzz that takes one argument, an integer N, and returns a string. The returned string is constructed following these rules:
  # When N is divisible by 3, return "fizz".
  # When N is divisible by 5, return "buzz".
  # When N is divisible by 3 and 5, return "fizzbuzz".
  # Any other case, return N as a string (e.g. say N is 7 then return "7").
  # Remember to start with tests for all of the methods described above. Your commit history should prove that you have used TDD.
end
