require 'prime'
hashh = {'ddd' => 4, 'JJJ' => 2, 'h' => 7}
l='odd'
def hash_p(hash,s)
  case s
    when 'prime'
    result=hash.find_all{ |key, value| Prime.prime?(value)}
    when 'odd'
      result=hash.find_all{ |key, value| value % 2== 1}
    when 'even'
      result=hash.find_all{ |key, value| value % 2== 0}
  end
end
puts hash_p(hashh,l)