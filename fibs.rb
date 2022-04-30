def fib(n)
  [0, 1].include?(n) ? n : fib(n - 1) + fib(n - 2)
end

p fib(0
)
p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(5)