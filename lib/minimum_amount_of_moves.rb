def minimumBribes(q)
    moves = 0
    q.each_with_index do |num, index|
        if num > index + 1 && (num - (index + 1)) <= 2
            moves += (num - (index + 1))
        elsif (num - (index + 1)) > 2
            puts "Too chaotic"
            return
        end
    end
    puts moves
end
