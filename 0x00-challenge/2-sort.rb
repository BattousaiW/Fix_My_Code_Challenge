# Sort integer arguments (ascending)

result = []
ARGV.each do |arg|
    # Check if the argument is an integer
    next unless arg =~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i

    # Insert result at the right position
    is_inserted = false
    result.each_with_index do |val, idx|
        if val >= i_arg
            result.insert(idx, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg unless is_inserted
end

puts result
