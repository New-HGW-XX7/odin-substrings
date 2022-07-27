dict = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit", "low"]

def substrings(word, array)
    
    hash = {}

    word = word.downcase
  
    array.each do |substr|
  
        if word.include?(substr)
            puts substr
  
            if hash.include?(substr)
                hash[substr] += 1
            else
                hash[substr] = 1
            end
  
        end
  
    end
  
    puts hash
end
  
substrings("below", dict)

##########################################################

def substrings_mult(word, array)
  
    hash = {} 
    word = word.downcase.split.join(' ')
    word_backup = word
    print word

    array.each do |substr|


        while word.include?(substr)

            puts substr

            if hash.include?(substr)
                hash[substr] += 1
            else
                hash[substr] = 1
            end

            word = word.sub(substr, '') # Deletes first match
        end

        word = word_backup # Restores word for next round
        
    end

    puts hash
end

substrings_mult("Howdy partner, sit down! How's it going?", dict)