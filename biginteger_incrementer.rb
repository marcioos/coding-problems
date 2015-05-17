def increment(big_integer)
    if big_integer[-1] == 9
        if big_integer.size > 1
            increment(big_integer[0..-2]) << 0
        else
            return [1, 0] 
        end
    else
        big_integer[-1] = big_integer[-1] + 1
        return big_integer
    end
end

print increment([9]), "\n"
print increment([1,0]), "\n"
print increment([9,9]), "\n"
print increment([9,9,9]), "\n"
print increment([1,2,9,1,2,9,1,2,9,1,2,9,1,2,9,1,2,9,1,2,9]), "\n"
print increment([9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]), "\n"