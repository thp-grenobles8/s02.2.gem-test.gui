def caesar_cipher (s, n)
  s.split("").map{
    |l| (
    (97..122).include?(l.ord) ?
      l.ord + n > 122 ? #downcase ?
        97 + (l.ord + n) % 123 : #end
        l.ord + n :
      (65..90).include?(l.ord) ?
        l.ord + n > 90 ?
          65 + (l.ord + n) % 91 :
          l.ord + n :
        l.ord
    ).chr
  }.join("")
end
