def sort_hash(hash)
    
    sorted_keys = hash.keys.sort_by { |key| key.length }

    sorted_hash = {}

    sorted_keys.each { |key| sorted_hash[key] = hash[key] }
  
    return sorted_hash
end
hash = {
  "Vaishnavi" => 10,
  "Mayuraj" => 20,
  "Riya" => 30,
  "ganga" => 40,
  "sri" => 50
}
sorted_hash = sort_hash(hash)
sorted_hash.each { |key, value| puts "#{key}: #{value}" }

  