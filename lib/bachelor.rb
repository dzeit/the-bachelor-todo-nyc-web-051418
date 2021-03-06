require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season] 
  data[season].each do |array_of_hash|
    #array_of_hash[:status] to get access to the value of :status key
    if array_of_hash["status"] == "Winner"
      return array_of_hash["name"].split[0]
    end 
  end 
end

def get_contestant_name(data, occupation)
  # loop over data
  # key, values 
  #values loop over 
  # contestant occupation  
  data.each do |season, contestant_array| #season = 1 key of many keys / contestant_array = the values of the key (the first iteration of data)
    contestant_array.each do |contestant|
      if contestant["occupation"] == occupation 
        return contestant["name"]
      end 
    end 
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown 
        counter += 1 
      end 
    end 
  end 
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown  
        return contestant["occupation"] 
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  total_age = 0 
  contestant_number = 0 
  data[season].each do |contestant|
    total_age += contestant["age"].to_i 
    contestant_number += 1 
  end 
    (total_age.to_f / contestant_number.to_f).round(0) # (1) rounds to the nearest next number and (0) rounds down.
end
