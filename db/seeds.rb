require_relative('../models/challenge')
require_relative('../models/restaurant')

challenge1 = Challenge.new({
  "name" => "epic eat",
  "info" => "50 wings",
  "deal" => "eat for free",
  "day" => "monday",
  "food_type" => "chicken"
  })



challenge2 = Challenge.new({
  "name" => "ring of fire",
  "info" => "very hot chili",
  "deal" => "hall of flame",
  "day" => "friday",
  "food_type" => "curry"
  })

challenge1.save
challenge2.save


restaurant1 = Restaurant.new({
  "name" => "bull",
  "location" => "china",
  "website" => "www.google.com",
  "directions" => "turn left",
  "number" => "039232393032"
  })


restaurant2 = Restaurant.new({
  "name" => "kill",
  "location" => "bob",
  "website" => "www.google.com",
  "directions" => "turn left",
  "number" => "039232393032"
  })
restaurant1.save
restaurant2.save
