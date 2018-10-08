def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    "nil detected"
  else
    tri = [a,b,c]
    tri.sort_by
    if a > b && a > c
      "a is bigger"
    elsif b > a && b > c
      "b is bigger"
    elsif c > b && c > a
      "c is bigger"
    end
  end
end
#met dans l'ordre : en majuscule, retire les 'L''T' et 'A' puis reverse le tout
def reverse_upcase_noLTA(a)
  a = a.upcase.gsub(/[LTA]/,'').reverse
end

def array_42(arr)
arr.include?42
end

def magic_array(arr)
arr.flatten.map{|e| e*2}.delete_if {|n| n%3 == 0 }.uniq.sort
end
