start = Time.now

prng = Random.new

(0...100000000).each do
  i1 = prng.rand(0...10000)
  i2 = prng.rand(0...10000)
  i3 = prng.rand(0...10000)
  i4 = prng.rand(1...10000)

  result = ((i1 + i2) * i3) / i4
end

finish = Time.now

p((finish - start) * 1000) # ms
