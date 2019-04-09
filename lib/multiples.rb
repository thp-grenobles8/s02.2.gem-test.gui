
def multiple_3_5?(n)
  return n%3==0||n%5==0
end

def sum_multiples_3_5(n)
  return n.to_i == n && n>=0 ?
    (0..(n-1)).select{|v| multiple_3_5?(v)}.sum :
    "error"
end
