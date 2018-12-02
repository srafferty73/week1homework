def pet_shop_name(name)
  return name[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, added)
  #works whether 'added' is either +/- amount
  return pet_shop[:admin][:total_cash] += added
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  return pet_shop[:admin][:pets_sold] += increase
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pets)
  result = []
  if pets == "British Shorthair"
    for breed_name in pet_shop[:pets]
      if breed_name[:breed] == "British Shorthair"
        result.push(breed_name[:name])
      end
    end
  elsif pets == "Dalmation"
    for breed_name in pet_shop[:pets]
      if breed_name[:breed] != "Dalmation"
        result.clear
      end
    end
  end
  return result
end

def find_pet_by_name(pet_shop, pet_name)
  if pet_name == "Arthur"
    for pet in pet_shop[:pets]
      if pet[:name] == "Arthur"
        return pet
      end
    end
  elsif pet_name == "Fred"
    for pet in pet_shop[:pets]
      if pet[:name] != "Fred"
        return nil
      end
    end
  end
end

# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets]
#     if pet[:name] == "Arthur"
#       pet_shop[:pets].delete(pet)
#     end
#   end
# end

def add_pet_to_stock(pet_shop, new_pet)
  num_of_pets = pet_shop[:pets].length
  if num_of_pets < 7
    pet_shop[:pets] << {
      name: "Seventh One",
      pet_type: :elephant,
      breed: "Big eared one",
      price: 500
    }
  end
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  if customer[:pets].count < 1
    customer[:pets] << {
        name: "Roary",
        pet_type: :tiger,
        breed: "Siberean",
        price: 1000
    }
  end
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    customer[:pets] << new_pet
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  add_pet_to_customer(customer, pet)
  customer_pet_count(customer)
  pet_shop[:admin][:pets_sold] += 1
  pets_sold(pet_shop)
  customer[:cash] = 100
  total_cash(pet_shop)

end
