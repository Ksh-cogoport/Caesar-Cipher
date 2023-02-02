
def caesar_cipher(string,shift_place)
    s_alpha = ('a'..'z').to_a;
    l_alpha= ('A'..'Z').to_a;
    char_array=[]
    string.chars.each do |char|
        if char == char.downcase
            s_alpha.include?(char)?char_array.append(s_alpha[(s_alpha.find_index(char)+shift_place)%26]):char_array.append(char)
        else
            l_alpha.include?(char)?char_array.append(l_alpha[(l_alpha.find_index(char)+shift_place)%26]):char_array.append(char)
        end
    end
    char_array.join
end

string= gets.chomp
shift_place=gets.chomp.to_i
puts caesar_cipher(string,shift_place) 

