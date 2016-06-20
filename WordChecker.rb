def in_words(array,string)
  count=0
  array.each do |word|
    if word==string
      count+=1
    end
  end
  if count>0
    puts "The word is in that array!"
  else
    puts "It's not in that array"
  end
end


def possible_words(array,string)
  value=true
  string_holder=""

  temp_input=Array.new(string.length)
  count=0
  string.each_char do |i|
    temp_input[count]=i
    count+=1
  end

  array.each do |eachword|
    (0..string.length-1).each do |i|
      if eachword[i]!=temp_input[i]
        value=false
      end
    end
      if value==true
        string_holder+= eachword + " "
      end
    value=true
  end
  return string_holder
end


contents = File.read('trial.txt')
file_array=contents.downcase.split(" ")
# print file_array
puts "Input please:"
user_in=gets.chomp
puts possible_words(file_array,user_in)

# Below is the program that runs with a prepopulated array of words instead
# of a .txt file like the program above.
# words=["world","worlds","hello","hi","worldlike","womp","worts"]
# in_words(words,"worweld")
#
# puts "Input please:"
# user_in=gets.chomp
# puts possible_words(words,user_in)
