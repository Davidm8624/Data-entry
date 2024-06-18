class Person
  attr_accessor :name, :age, :sex, :fav_color, :credit_score
end

person1 = Person.new()
person1.name = gets.to_s # this isnt nessisary as gets automaticly accepts strigs
person1.age = gets.to_i

def get_sex_type(sex)
  get_sex = ""

  case sex
  when "m"
    get_sex = "male"
    puts "got male!"
  when "f"
    get_sex = "female"
    puts "got female!"
  else
    get_sex = "invalid option"
    puts "got something else"
  end

  return get_sex
end

person1.sex = get_sex_type(gets.chomp)
person1.fav_color = gets.chomp

def credit(score)
  if (score < 575)
    return "poor"
  elsif (score > 576 && score < 669)
    return "fair"
  elsif (score > 670 && score < 719)
    return "good"
  elsif (score > 720 && score < 799)
    return "vary good"
  elsif (score > 800)
    return "excelent"
  else
    return "no credit"
  end
end

person1.credit_score = credit(gets.to_i)

# console output
puts "OUTPUT:"
puts person1.name
puts person1.age
puts person1.sex
puts person1.fav_color
puts person1.credit_score

# File.write("long-term-storage.txt", person1.inspect, "/n", mode: "a")

# was wonder why above didnt work: its \n not /n             the whole #{} didnt make a diff

File.write("long-term-storage.txt", "#{person1.inspect}\n", mode: "a")
