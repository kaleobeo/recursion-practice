# frozen_string_literal: true

def fib(num)
  [1, 2].include?(num) ? num - 1 : fib(num - 1) + fib(num - 2)
end

def fibs(num)
  output = [0, 1]
  return output.first(num) if num <= 2

  output.push(output[-1] + output[-2]) until output.length == num
  output
end

def fibs_rec(num, output = [0, 1])
  return output.first(num) if num <= output.length

  output.push(fibs_rec(num - 1, output)[-1] + fibs_rec(num - 2, output)[-1])
end

p fibs_rec(8)
