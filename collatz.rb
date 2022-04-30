def collatz(num)
  return 0 if num == 1
  1 + (num.odd? ? collatz((num * 3) + 1) : collatz(num / 2))
end

