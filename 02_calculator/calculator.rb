def add(num1,num2)
  num1 + num2
end

def subtract(num1,num2)
  num1 - num2
end

nb = Array.new
nb = [1,3,5,7,9,11]

 def sum(arr)
   arr.inject(0){|sum,x| sum + x }
 end
def multiply(num1,num2)
  num1 * num2
end

def power(num1, num2)
  num1**num2
end

#ne marche pas
def fact(num1)
res = 1
  while num1 > 0
    res *= num1
    num1 -= 1
end
return res
end
