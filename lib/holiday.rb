require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].each do |holiday, supplies|
    # binding.pry
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    # binding.pry
    if season == :winter
      holiday.each do |day, supplies|
        # binding.pry
        winter_supplies << supplies
      end
    end
  end
  winter_supplies.flatten
  # binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  #iterate through hash with .each
  holiday_hash.each do | season, holiday|
    #gather season, transform to string, and capitalize, output using string interpolation and puts
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, supplies|
      # binding.pry
    # .split the string into an array and iterate over that array to .capitalize each word in it. Then, you'll need to .join the array back into a string.
      puts "  #{holiday.to_s.split("_").map {|s| s.capitalize}.join(" ")}: #{supplies.join(", ")}"
        #!used ("_") because of this error: 
        #*<IO:<STDOUT>> received :puts with unexpected arguments
        #*expected: ("  New Years: Party Hats")
        #*got: ("  New_years: Party Hats")
      # binding.pry
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
holiday_hash.each do |season, holidays|
  holidays.each do |holiday, supplies|
    if supplies.include?("BBQ")
      bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







