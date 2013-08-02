House.delete_all
Student.delete_all

house_details = {
  "Gryffindor"  => %q(Gryffindor values courage, bravery, nerve and chivalry. Its mascot is the lion, and its colours are scarlet and gold. The Gryffindor motto is "Their daring, nerve and chivalry set Gryffindors apart".),
  "Hufflepuff"  => %q(Hufflepuff values hard work, patience, justice, and loyalty. The house mascot is the badger, and canary yellow and black are its colours. The Hufflepuff motto is "Those patient Hufflepuffs are true and unafraid of toil".),
  "Ravenclaw"   => %q(Ravenclaw values intelligence, creativity, learning, and wit. The house mascot is an eagle and the house colours are blue and bronze. The Ravenclaw motto is "Wit beyond measure is man's greatest treasure".),
  "Slytherin"   => %q(Slytherin house values ambition, cunning, leadership, and resourcefulness. The house mascot of Slytherin is the serpent, and the house colours are green and silver. The Slytherin motto is "Slytherin will help you on your way to greatness".)
}

house_details.each do |name, desc|
  House.create! name: name, desc: desc
end