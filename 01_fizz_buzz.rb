def hg(n)
  output=
    if n%15==0
      'Fizz Buzz'
    elsif n%5==0
      'Buzz'
    elsif n%3==0
      'Fizz'
    else
      n.to_s
    end
  p output
end

hg

#(1..15).each{|num|
#  hg num
#}
