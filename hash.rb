def hash_p(hash, string = 'even')
  case string
    when 'prime'
      hash.find_all{ |key, value| Prime.prime?(value)}
    when 'odd'
      hash.find_all{ |key, value| value % 2 == 1}
    when 'even'
      hash.find_all{ |key, value| value % 2 == 0}
  end
end
