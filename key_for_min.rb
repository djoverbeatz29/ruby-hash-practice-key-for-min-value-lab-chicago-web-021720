# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash == {}
        nil
    else
        minkey = name_hash.map { |k, v| k }[0]
        minval = name_hash[minkey]
        name_hash.each { |k, v| if v < minval; minkey = k; minval = v end }
        minkey
    end
end