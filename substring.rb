
def substrings(string, dict)
    dict.reduce(Hash.new(0)) do |result, word|
        if string.scan(word).length>0
            result[word]=string.scan(word).length
        end
        result
    end
    
end

string = gets.chomp
no_of_words = gets.chomp.to_i
dict = []
i=0
no_of_words.times do
    dict[i]=gets.chomp
    i+=1;
end

puts substrings(string,dict)