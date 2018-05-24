def get_name(person)
  return person[:name]
end


def get_fave_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return true if person[:favourites][:snacks].include?(food) else return false
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def total_money(people)
  sum = 0
  for person in people
    sum += person[:monies]
  end
  return sum
end

def lending_money(lender, lendee, amount)

  lender[:monies]-=amount
  lendee[:monies]+=amount


end

def fave_food_set(people)
  fave_food_arr = []
    for person in people
      fave_food_arr.push(person[:favourites][:snacks])
    end
  return fave_food_arr.flatten
end

def no_friend_finder(people)
  lone_people = []

    for person in people
      lone_people.push(person[:name]) if person[:friends].length == 0
    end

  return lone_people

end
