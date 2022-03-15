def substrings(word, dict)
    result = Hash.new(0)
    word_array = word.downcase.split(" ")   

    word_array.each do |w|
        dict.each do |d|
            if w.include?(d)
                result[d] += 1
            end
        end     
    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# puts substrings("below", dictionary)