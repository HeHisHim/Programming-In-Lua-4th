-- 编写一行函数, 该函数用于进行无符号整型数的取模运算

function udiv (n, d)
    if d < 0 then
      if math.ult(n, d) then return 0
      else return 1
      end
    end
  
    local q = ((n >> 1) // d) << 1
    local r = n - q * d
  
    if not math.ult(r, d) then q = q + 1 end
    return q
  end
  
  
  -- Calculate n mod d, where n and d are treated as unsigned integers.
  function modu (n, d)
    return n - (udiv(n, d) * d)
  end