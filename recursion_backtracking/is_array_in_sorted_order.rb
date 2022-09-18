def is_array_in_sorted_order(arrayData, n)
    if n == 1
        return 1
    end
    return arrayData[n-1] < arrayData[n-2] ? 0 : is_array_in_sorted_order(arrayData, n-1)
end

puts is_array_in_sorted_order([1,2,3,4,5], 5)