require_relative('../models/challenge')

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