House.delete_all
Student.delete_all

house_names = [
  "Gryffindor",
  "Slytherin",
  "Hufflepuff",
  "Ravenclaw"
]

house_names.each do |name|
  House.create! name: name
end