#write your code here
def translate(string)

  array = string.split(' ')

  array.map! do |word|
    case word
      when /^[aeiou]/
        push_and_shift(word, 0)
      when /^qu/
        push_and_shift(word, 2)
      when /^[^aeiou]qu/
        push_and_shift(word, 3)
      when /^[^aeiou][aeiou]/
        push_and_shift(word, 1)
      when /^[^aeiou][^aeiou][aeiou]/
        push_and_shift(word, 2)
      when /^[^aeiou][^aeiou][^aeiou][aeiou]/
        push_and_shift(word, 3)
      else
        "Huh?"
    end
  end

  string = array.join(' ')

end

def push_and_shift(word, num)
  lettersArray = word.split('')
  num.times do |i|
    lettersArray.push(lettersArray[0])
    lettersArray.shift
  end
  word = lettersArray.join
  word = word + "ay"
  return word
end
