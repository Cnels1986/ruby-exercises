def caeser_cipher (text, key)
    text_array = text.split("")
    cipher = Array.new
    text_array.each do |c|
        ascii = c.ord   #ascii value of that char
        if ascii.between?(65,90)  #uppercase letters
            if (ascii + key) > 90
                ascii = (ascii - 26) + key
            else
                ascii += key
            end
        elsif ascii.between?(97,122)  #lowercase letters
            if (ascii + key) > 122
                puts c
                ascii = (ascii - 26) + key
            else
                ascii += key
            end
        end
        cipher << ascii
    end
    puts cipher.pack('c*')
end

caeser_cipher("What a string!", 5)