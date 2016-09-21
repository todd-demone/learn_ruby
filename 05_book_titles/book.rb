class Book

  attr_accessor :title

  def title=(book_title)

    array = book_title.split(' ')

    array.map! do |element|

      # don't capitalize conjunections, prepositions or the articles "the", "a" or "an"
      # alternative - the following words could have been put in an array and then run the map method to test whether element equalled any of these "little" words
      if element == "and" || element == "in" || element == "the" || element == "of" || element == "a" || element == "an"
        element = element
      # don't try to capitalize string objects that convert to a valid number - e.g., "20" or "20.0" - trying to capitalize these objects returned nil rather than "20" - see "numeric" method below
      elsif numeric(element) == true
        element = element
      else
        element.capitalize!
      end
    end
    # capitalize the first word in the title no matter what
    array[0].capitalize!
    # join the array back into a string and assign the objec to the variable @title
    @title = array.join(' ')

  end

  # tests whether a string object is a value float value
  # I found this method on Stack Overflow and used it to test array elements in the title= method. Before I found this method I was trying to run the capitalize method on string objects that are valid float values (e.g., "20".capitalize!) and I was getting nil rather than "20".
  def numeric(x)
    true if Float(x) rescue false
  end

end
