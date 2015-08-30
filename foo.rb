a = (0..10).map {|i| rand(1000)}
b = a.shuffle
missing_number = b.pop

def find_missing_number(a, b)
  sa = a.sort
  sb = b.sort
  (0..a.count).each {|i|
    return sa[i] unless sa[i] == sb[i]
  }
  nil
end

result = find_missing_number(a, b)
puts result == missing_number
puts result
puts missing_number

