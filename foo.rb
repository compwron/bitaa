a = (0..10).map {|i| rand(1000)}
b = a.shuffle
missing_number = b.pop

def find_missing_number(a, b)
  sa = a.inject(&:+)
  sb = b.inject(&:+)
  sa - sb
end

result = find_missing_number(a, b)
puts result == missing_number
puts result
puts missing_number

