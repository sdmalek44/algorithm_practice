def arrayManipulation(n, queries)
    zeros = []
    query_len = queries.length
    highest = 0
    for i in 1..n
        num = 0
        for j in 0...query_len
            if (queries[j][0]..queries[j][1]).include? i
                num += queries[j][2]
            end
        end
        highest = num if num > highest
    end
    highest
end
