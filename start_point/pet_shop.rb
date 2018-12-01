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

def find_pet_by_name(pet_shop, pet_name)
  if pet_name == "Arthur"
    for pet in @pet_shop[:pets]
      if pet[:name] == "Arthur"
        return pet
      end
    end
  elsif pet_name == "Fred"
    for pet in @pet_shop[:pets]
      if pet[:name] != "Fred"
        return nil
      end
    end
  else
    return nil
  end
end

# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in @pet_shop[:pets]
#     if pet[:name] == "Arthur"
#       @pet_shop[:pets].delete(pet)
#     end
#   end
# end

def add_pet_to_stock(pet_shop, new_pet)
  num_of_pets = @pet_shop[:pets].length
  if num_of_pets < 7
    @pet_shop[:pets] << {
      name: "Seventh One",
      pet_type: :elephant,
      breed: "Big eared one",
      price: 500
    }
  end
end

def customer_cash(customers)
  return @customers[0][:cash]
end

def remove_customer_cash(customer, amount)
  return @customers[0][:cash] -= 100
end

def customer_pet_count(customer)
  return @customers[0][:pets].count
end

def add_pet_to_customer(customer, new_pet)
  if @customers[0][:pets].count < 1
    @customers[0][:pets] << {
        name: "Roary",
        pet_type: :tiger,
        breed: "Siberean",
        price: 1000
    }
  end
end
