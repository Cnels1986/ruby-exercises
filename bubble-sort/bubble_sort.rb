def bubble_sort(numbers)
    l = (numbers.length) - 2
    max_iterations = numbers.length - 1 
    passes = 0

    while passes <= max_iterations do
        for a in 0..l
            if (numbers[a] > numbers[a+1])
                temp = numbers[a]
                numbers[a] = numbers[a+1]
                numbers[a+1] = temp
            end
        end
        passes += 1
    end
    puts numbers
end

a = [4,3,78,2,0,2]
bubble_sort(a)