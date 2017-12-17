require 'prime'
def hash_p(hash, string = 'even')
  case string
    when 'prime'
      result = hash.find_all{ |key, value| Prime.prime?(value)}
    when 'odd'
      result = hash.find_all{ |key, value| value % 2 == 1}
    when 'even'
      result = hash.find_all{ |key, value| value % 2 == 0}
  end
end
