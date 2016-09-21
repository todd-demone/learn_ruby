#write your code here
def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, y=2)
  phraseToRepeat = x # adds the parameter just once to the phraseToRepeat variable
  (1..y-1).each {|item| phraseToRepeat += " " + x} # adds the parameter y-1 times to the phraseToRepeat variable, separated by spaces
  phraseToRepeat
end

def start_of_word(x, y=1)
  startOf = ""
  (0..y-1).each {|item| startOf += x[item]}
  startOf
end

def first_word(x)
  firstOne = ""
  counter = 0
  while counter < x.length do
    if x[counter] == " "
      break
    else
        firstOne += x[counter]
    end
    counter += 1
  end
  firstOne
end

def titleize(x)
  y = x.scan(/\w+/) # converts x (a string) into an array of words

  (0..y.length-1).each {|element| y[element].capitalize! unless element != 0 && (y[element] == "over" || y[element] == "the" || y[element] == "and" || y[element] == "an") }
  y.join(' ') #converts y (an array) into a string of words separated by a space.
end
