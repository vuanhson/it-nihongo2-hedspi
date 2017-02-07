(2..100).each do |n|
  check = true
  for i in 2..(Math.sqrt(n))
    if n % i == 0
      check = false
      break
    end
end
  puts n if check
end