def Caesar_Cipher(word, number = 5)
        crypted = []
        
        word.each_char do |ch|
          if ('a'..'z').include?(ch)
            crypted.push((((ch.ord - 'a'.ord + number) % 26) + 'a'.ord).chr)
          elsif ('A'..'Z').include?(ch)
            crypted.push((((ch.ord - 'A'.ord + number) % 26) + 'A'.ord).chr)
          elsif ch == " "
            crypted.push(" ")
          else
            crypted.push(ch)
          end
        end
      
        return crypted.join
      end
      
      puts Caesar_Cipher("What a string!", 5)