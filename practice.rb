array = [1,2,3,4,5,6,7,8,9,10]

array.each do |element|
    puts element
end

array.each { |element| puts element }

#####

array = [1,2,3,4,5,6,7,8,9,10]

array.each do |element|
    if element > 5
        puts element
    end
end

array.each { |element| puts number if number > 5 }

array3 = array.select { |element| element % 2 != 0 }

#####

array.push(11)
array << 11

array.unshift(0)

#####

array.pop

array.push(3)
array << 3

#####
#does not modify
arr.uniq

#modifies the calling object
arr.uniq!

#self explanatory
array.length()

#####

hash1 = {name: 'bob'}
hash1 = {:name => 'bob'}

#####

h[:b]

h[:e] = 5

h.delete_if { |k, v| v < 3.5 }

h.delete_if do |k, v|
    v < 3.5
end

#####

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
               ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

arr.delete_if do |element|
    element.start_with?('s')
end

arr.delete_if do |element|
    element.start_with?('s', 'w')
end

#####

a = a.map do |element|
    element.split
end

a.flatten

#####
