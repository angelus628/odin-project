def translate(w)
    w.split(' ').map { |word|
        if(word[0] =~ /[aeiou]/i)
            "#{word}ay"
        else
            vowelIndex = word.index(/[aeiou]/i)
            if(word[vowelIndex - 1] == 'q' and word[0] == word[vowelIndex - 1])
                word[vowelIndex + 1, word.length] + word[vowelIndex - 1, vowelIndex + 1] + 'ay'
            elsif(word[vowelIndex - 1] == 'q' and word[0] != word[vowelIndex - 1])
                word[vowelIndex + 1, word.length] + word[0, vowelIndex - 1] + word[vowelIndex - 1, vowelIndex] + 'ay'
            else
                 word[vowelIndex, word.length] + word[0, vowelIndex] + 'ay'
            end
        end
   }.join(' ')
end


