def alternatingCharacters(s)
    current_letter = ""
    s.chars.inject(0) do |acc, char|
        if char == current_letter
            acc += 1
        else
            current_letter = char
        end
        acc
    end
end
