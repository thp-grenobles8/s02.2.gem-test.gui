
def day_trader (arr)
  best = {buy:nil, sell:nil, gain:0}
  arr.each_with_index do |v,ix|
    arr[ix..-1].each_with_index do |v2,ix2|
      if v2 - v > best[:gain]
        best[:gain] = v2-v
        best[:sell] = ix2+ix
        best[:buy] = ix
      end
    end
  end
  return [best[:buy],best[:sell]]
end


def word_counter (s, dic)
  found = {}
  s = s.downcase
  dic.sort.each { |w|
    found[w] = s.scan(w).length
  }
  return found.select {|k,v| v>0}
end
