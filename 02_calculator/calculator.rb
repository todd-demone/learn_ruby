#write your code here
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
    total = 0.0
    array.each { |item| total += item}
    return total
end

def multiply(x, y, *args)
  product = x * y
  args.each { |item| product *= item}
  return product
end

def power(x, y)
  product = 1
  (1..y).each {|item| product *= x}
  return product
end

def factorial(n)
  if n == 0
    return 1
  else
    product = 1
    n.step(1, -1) {|item| product *= item}
    return product
  end
end
