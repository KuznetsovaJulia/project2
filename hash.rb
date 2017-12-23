def hash_p(hash, string = 'even')
  case string
    when 'prime'
      hash.find_all{ |key, value| Prime.prime?(value)}
    when 'odd'
      hash.find_all{ |key, value| value.odd?}
    when 'even'
      hash.find_all{ |key, value| value.even?}
  end
end
