class Person
  attr_accessor :name, :age, :sex, :fav_color, :credit_score
end

person1 = Person.new()
person1.name = gets.to_s #this isnt nessisary as gets automaticly accepts strigs
person1.age = gets.to_i
sex_buffer = gets

def get_sex_type (sex)
  get_sex = ""

case sex #whaaaaaaaaaaat sex code?!?!?!?    :O
when "male"
  get_sex = "male"
  puts "got male!"
when "female"
  get_sex = "female"
  puts "got female!"
else
  get_sex = "invalid option"
  puts "got something else"
end

return get_sex
end

person1.sex = get_sex_type(sex_buffer)


puts "OUTPUT:"
puts person1.name
puts person1.age
puts person1.sex
