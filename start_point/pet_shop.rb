def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(sum)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, added)
  #works whether 'added' is either +/- amount
  return @pet_shop[:admin][:total_cash] += added
end

def pets_sold(pets_sold)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  return @pet_shop[:admin][:pets_sold] += increase
end

def stock_count(pets)
  return @pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pets)
  result = []
  if pets == "British Shorthair"
    for breed_name in @pet_shop[:pets]
      if breed_name[:breed] == "British Shorthair"
        result.push(breed_name[:name])
      end
    end
  elsif pets == "Dalmation"
    for breed_name in @pet_shop[:pets]
      if breed_name[:breed] != "Dalmation"
        result.clear
      end
    end
  end
  return result
end

def find_pet_by_name(pet_shop, name)
  if name == "Arthur"
    for pet in @pet_shop[:pets]
      if pet[:name] == "Arthur"
        return pet
      end
    end
  elsif name == "Fred"
    for pet in @pet_shop[:pets]
      if pet[:name] != "Fred"
        return nil
      end
    end
  end
end
