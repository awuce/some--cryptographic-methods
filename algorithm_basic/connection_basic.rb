def is_prime(p)
   if p <= 1
     return false
   end
   b = (p ** 0.5).floor
   for i in (2..b)
     if p%i == 0
       return false
     end
   end
   return true
end

def to_binary(n)
  q = n
  a = Array.new
  while q != 0
    a.push(q % 2)
    q = (q/2).floor
  end
  return a
end
