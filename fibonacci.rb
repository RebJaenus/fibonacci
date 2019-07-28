
def recursive_fib(num)
  if num <= 0
    return 0
  elsif num === 1
    return 1
  else
    return recursive_fib(num-1) + recursive_fib(num-2)
  end
end

def iterative_fib(num)
  prev = 0
  prev2 = 1
  answer = 0
  while num > 1
    answer = prev + prev2
    prev = prev2
    prev2 = answer
    num -= 1
  end
  return answer
end



require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

puts "the #" + num.to_s + " number in the fibonacci sequence by recursion is: " + recursive_fib(num).to_s
puts "the #" + num.to_s + " number in the fibonacci sequence by iteration is: " + iterative_fib(num).to_s
