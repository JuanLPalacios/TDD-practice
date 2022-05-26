require './solver'

class Solver
  def factorial(n); end
  def reverse(word); end
  def fissbuzz(n); end
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
  end

  context 'method fizzbuzz' do
    it 'should takes one argument, an integer N, and returns a string.' do
      solver = Solver.new()
      n = 5

      result = solver.fizzbuzz(n)
      
      expect(result.class).to eq(String)
    end

    it 'should return "fizz" when N is divisible by 3.' do
      solver = Solver.new()
      n = 6

      result = solver.fizzbuzz(n)
      
      expect(result).to eq('fizz')
    end

    it 'should return "buzz" when N is divisible by 5.' do
      solver = Solver.new()
      n = 10

      result = solver.fizzbuzz(n)
      
      expect(result).to eq('buzz')
    end

    it 'should return "fizzbuzz" when N is divisible by 5 and 3.' do
      solver = Solver.new()
      n = 15

      result = solver.fizzbuzz(n)
      
      expect(result).to eq('fizzbuzz')
    end
    
    it 'should return N as a string in any other case.' do
      solver = Solver.new()
      n = 7

      result = solver.fizzbuzz(n)
      
      expect(result).to eq('7')
    end
  end
end
