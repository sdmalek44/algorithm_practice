def arrayManipulation(n, queries)
    arr = []
    max = 0
    n.times { arr.push(0) }
    for i in 0...queries.length
      arr[queries[i][0] - 1] += queries[i][2]
      if queries[i][1] < arr.length
        arr[queries[i][1]] -= queries[i][2]
      end
    end
    for j in 1...n
      arr[j] += arr[j - 1]
    end
    for k in 0...arr.length
      max = max > arr[k] ? max : arr[k]
    end
    max
end
