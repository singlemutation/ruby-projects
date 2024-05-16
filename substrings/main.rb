dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, array)
  stripped_words = words.downcase.gsub(/\W/, ' ')
  word_array = stripped_words.split(' ')
  new_arr = []
  array.map do |item|
    word_array.map do |word|
      new_arr.push(item) if word.include? item
    end
  end
  new_arr.tally
end  

p substrings("Howdy partner, sit down! How's it going?", dictionary)