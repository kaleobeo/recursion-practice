def fib(n)
  [0, 1].include?(n) ? n : fib(n - 1) + fib(n - 2)
end

def fibs(num)
  output = [0, 1]
  return output.first(num) if num <= 2
  return output if num == 2
  until output.length == num do
    output.push(output[-1] + output[-2])
  end
  output
end

p fibs(1)

