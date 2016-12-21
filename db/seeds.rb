require_relative('../models/challenge')
require_relative('../models/restaurant')

restaurant1 = Restaurant.new({
  "name" => "City Café",
  "location" => "19 Blair St, EH1 1QR",
  "website" => "www.citycafeedinburgh.co.uk",
  "directions" => "/images/restaurant_map/citycafe1.png",
  "number" => "0131 220 0125"
  })

restaurant2 = Restaurant.new({
  "name" => "Taco Mazama",
  "location" => "38 Hanover St, EH2 2DR",
  "website" => "www.tacomazama.co.uk/",
  "directions" => "/images/restaurant_map/tacomazamamap.jpeg",
  "number" => "0131 629 1892"
  })

restaurant3 = Restaurant.new({
  "name" => "Boozy Cow",
  "location" => "17 Frederick St, EH2 2EY",
  "website" => "www.boozycow.com/",
  "directions" => "/images/restaurant_map/boozycowmap.png",
  "number" => "0131 226 6055"
  })

restaurant4 = Restaurant.new({
  "name" => "The Killer Restaurant",
  "location" => "4-8 Lochrin Buildings, EH3 9NB",
  "website" => "www.thekillerrestaurant.com/",
  "directions" => "/images/restaurant_map/killerrestaurantmap.png",
  "number" => "0131 539 0999"
  })

restaurant5 = Restaurant.new({
  "name" => "STEAK",
  "location" => "14 Picardy Place, EH1 3JT",
  "website" => "www.steakedinburgh.com/",
  "directions" => "/images/restaurant_map/steakmap.png",
  "number" => "0131 556 1289"
  })

restaurant6 = Restaurant.new({
  "name" => "The Other Place",
  "location" => "2-4 Broughton Road, EH7 4EB",
  "website" => "www.theotherplaceedinburgh.com",
  "directions" => "/images/restaurant_map/otherplacemap.png",
  "number" => "0131 556 1024"
  })

restaurant7 = Restaurant.new({
  "name" => "Kismot",
  "location" => "29 St Leonards Street, EH8 9QN",
  "website" => "www.kismot.co.uk/",
  "directions" => "/images/restaurant_map/kismotmap.jpg",
  "number" => "0131 667 0123"
  })

restaurant8 = Restaurant.new({
  "name" => "Three Sisters",
  "location" => "139 Cowgate, EH1 1JS",
  "website" => "www.thethreesistersbar.co.uk/",
  "directions" => "/images/restaurant_map/threesistersmap.png",
  "number" => "0131 622 6802"
  })

restaurant9 = Restaurant.new({
  "name" => "Marys Milk Bar",
  "location" => "19 Grassmarket, EH1 2HS",
  "website" => "www.marysmilkbar.com/",
  "directions" => "/images/restaurant_map/marysmilkbarmap.png",
  "number" => "0131 226 8900"
  })

restaurant10 = Restaurant.new({
  "name" => "Mccowans Brewhouse",
  "location" => "Fountain Park, EH11 1AF",
  "website" => "www.flaminggrillpubs.com/",
  "directions" => "/images/restaurant_map/mcowanmap.png",
  "number" => "0131 228 8198"
  })

restaurant11 = Restaurant.new({
  "name" => "Wings",
  "location" => " 5 Old Fishmarket Close, EH1 1RW",
  "website" => "www.wingsedinburgh.com/",
  "directions" => "/images/restaurant_map/wingsmap.png",
  "number" => "0131 629 1234"
  })

restaurant1.save
restaurant2.save
restaurant3.save
restaurant4.save
restaurant5.save
restaurant6.save
restaurant7.save
restaurant8.save
restaurant9.save
restaurant10.save
restaurant11.save


challenge1 = Challenge.new({
  "name" => "The Ultimate Burger Challenge",
  "restaurant_id" => restaurant1.id,
  "info" => "This £30 burger features three homemade burgers, two marinated chicken breasts and two spicy bean burgers, topped off with two pineapple rings, bacon, mushrooms, gherkins, two types of cheese, guacamole and salad, all served in a plate-sized bun with a large portion of gourmet chips and coleslaw. If you can finish it off in 45 minutes your burger is free, you get a tshirt and your name goes on the wall of fame so everyone can bask in your glory. Those who try and fail the challenge do have to pay, of course, but they get a small prize to say well done for having a go.",
  "deal" => "Eat Free",
  "day" => "Monday",
  "food_type" => "Burger",
  "picture" => "/images/challenge_images/citycafe.jpg"
  })



challenge2 = Challenge.new({
  "name" => "Giant Burrito Challenge",
  "restaurant_id" => restaurant2.id,
  "info" => "Burritos are often pretty hearty fare anyway but if youre feeling hungry Taco Mazama can provide you with a supersized triple burrito. If you can polish it off in ten minutes, youll get the £14.99 burrito for free and your photo on the wall. The fastest time at each Taco Mazama restaurant will then compete in a head-to-head eat-off at the end of the year to try and win a years free burritos. Get practising.",
  "deal" => "Eat Free",
  "day" => "Tuesday",
  "food_type" => "Burrito",
  "picture" => "/images/challenge_images/tacomanzama.jpg"
  })

challenge3 = Challenge.new({
  "name" => "The Chilli Challenge",
  "restaurant_id" => restaurant3.id,
  "info" => "This might seem fairly tame compared with some of the other challenges - its just one chilli cheese burger, one chilli cheese dog, one portion of chilli cheese fries and one Oero milkshake. But you have to consume it all within just 15 minutes. Succeed and its on Boozy Cow, fail and youre picking up the bill (which, as far as we can figure, is around £28). If you do make it through, youll get on the hall of fame but as of August 2015, more than 300 people had failed compared to just 85 who managed it.",
  "deal" => "Wall OF Fame",
  "day" => "Wednesday",
  "food_type" => "Chilli",
  "picture" => "/images/challenge_images/boozycow.jpg"

  })


challenge4 = Challenge.new({
  "name" => "The Killer Curry",
  "restaurant_id" => restaurant4.id,
  "info" => "Its one of the worlds hottest curries, and its now got its own restaurant. Formerly located at the Kismot, the Killer Curry has long been popular for those looking for a challenge – and it has even led to people being admitted to hospital. The £19.95 Killer Curry can be served as either a chicken, lamb or vegetarian dish and if you finish it your curry is free and youll end up on the wall of fame. But think carefully being deciding to take it on as theres a hall of shame for those who couldnt handle it. Not to mention a trip to A&E.",
  "deal" => "Wall OF Fame",
  "day" => "Thursday",
  "food_type" => "Curry",
  "picture" => "/images/challenge_images/killercurry.jpg"
  })


challenge5 = Challenge.new({
  "name" => "Man vs Steak",
  "restaurant_id" => restaurant5.id,
  "info" => "Do you love steak, lots and lots of steak? You do? Well this is the challenge for you. After youve signed the contract absolving the restaurant of liability from any health issues you might experience, STEAK will serve you up a 92 oz rump steak with five sides and three sauces. You have one hour to demolish the slab of meat, sides and sauces if you want the £160 challenge struck from the bill, a t-shirt and your picture on display in the restaurants reception.",
  "deal" => "Eat Free",
  "day" => "Friday",
  "food_type" => "Steak",
  "picture" => "/images/challenge_images/manvssteak.jpg"
  })


challenge6 = Challenge.new({
  "name" => "The Other Challenge",
  "restaurant_id" => restaurant6.id,
  "info" => "A triple chilli cheese burger with a side of chilli cheese fries and onions rings is what awaits you at The Other Place in Canonmills.
  The Other Challenge will cost you £20, but if you can clear your plate within the 20 minute time limit its on the house along with any drinks bought during the challenge.
  You even get your picture up on the wall for unquestionable bragging rites",
  "deal" => "Wall Of Fame",
  "day" => "Monday",
  "food_type" => "Burger",
  "picture" => "/images/challenge_images/other-challenge.jpg"
  })


challenge7 = Challenge.new({
  "name" => "The Kismot Killer",
  "restaurant_id" => restaurant7.id,
  "info" => "Dont be surprised if this one sounds familiar: back in 2011 two people ended up in hospital after trying to finish this ultra spicy curry from The Kismot.
  This is the only challenge on the list that doesnt have a time limit, but you will need to sign a disclaimer for this one too.
  With a secret mix of some of the hottest chillies on the planet Kismot claims this may be the hottest curry on the planet.
  If you can handle the heat and wolf down the Killer along with rice and nan, you get the £19.95 meal for free.",
  "deal" => "Eat Free",
  "day" => "Tuesday",
  "food_type" => "Curry",
  "picture" => "/images/challenge_images/kismotkiller.jpg"
  })

challenge8 = Challenge.new({
  "name" => "man plank",
  "restaurant_id" => restaurant8.id,
  "info" => "Served on a giant wooden plank, the pub are setting the level at a minimum of six men.
  The challenge consists of burgers, nachos, chicken wings, racks of ribs, samosas and vegetable pakoras.
  Whether its a hangover cure or simply an excuse to overindulge, tables must be booked in advance and the challenge costs £22.50 per person",
  "deal" => "Eat Free",
  "day" => "Saturday",
  "food_type" => "Mix",
  "picture" => "/images/challenge_images/manplank.jpg"
  })


challenge9 = Challenge.new({
  "name" => "freeze",
  "restaurant_id" => restaurant9.id,
  "info" => "For sweet-toothed challengers, you can feel the freeze at Marys Milk Bar in the Grassmarket.
  Mary serves up a challenge cup with seven scoopfuls of flavoured ice cream. You can select your own flavours and the sundae cup costs £10.
  This one is just for fun, but one ice cold fan has set a record of demolishing the cup in two minutes 36 seconds.",
  "deal" => "Wall Of Fame",
  "day" => "Sunday",
  "food_type" => "Ice Cream",
  "picture" => "/images/challenge_images/marysmilkbar.jpg"
  })

challenge10 = Challenge.new({
  "name" => "Bulls Head",
  "restaurant_id" => restaurant10.id,
  "info" => "If you love steak, then prove it. Youve got to take on • A butterflied rib-eye on the bone • Served on sizzling onions • Mushrooms • Grilled tomato • Peas • Onion rings. With a giant heap of chips to finish off",
  "deal" => "Wall Of Fame",
  "day" => "Monday",
  "food_type" => "Steak",
  "picture" => "/images/challenge_images/bulls-head-steakflaming.png"
  })

challenge11 = Challenge.new({
  "name" => "HOT, HOT, HOT!",
  "restaurant_id" => restaurant10.id,
  "info" => "WARNING: This dish will leave your mouth on fire • Flaming hot Naga chilli chicken curry • HOT HOT HOT! pulled pork burger • HOT HOT HOT! chicken wings. Served with rice, chips and sour cream. Good luck with this one!",
  "deal" => "Wall Of Fame",
  "day" => "Tuesday",
  "food_type" => "Mix",
  "picture" => "/images/challenge_images/hot-hot-hotflaming.png"
  })


challenge12 = Challenge.new({
  "name" => "THE FLAMING CHALLENGE BURGER",
  "restaurant_id" => restaurant10.id,
  "info" => "Man, The Myth, The Mighty Flaming Challenge Burger – the ultimate meat treat! Stacked high on a brioche bun, youll find • 4 flame-grilled 6oz beef burgers • Southern fried chicken fillet • BBQ pulled pork • Cheese slices • Crispy bacon • Onions. Topped with onion rings and with a giant heap of skinny fries!",
  "deal" => "Wall Of Fame",
  "day" => "Wednesday",
  "food_type" => "Burger",
  "picture" => "/images/challenge_images/burgerflaminggrill.jpg"
  })

challenge13 = Challenge.new({
  "name" => "Suicide Challenge",
  "restaurant_id" => restaurant11.id,
  "info" => "Chicken specialists Wings offer up a menu of chicken wings in varying degrees of spiciness but if you’re feeling brave, you can also try their Suicide Challenge. It comprises six wings coated in their secret Suicide Sauce with no sour cream, and victors will secure a place on the ‘Wall of Flame’. But that’s not the only challenge: they’ve also brought in Armagedwing, a challenge so spicy that so far only three contenders have completed it to receive the prize of two free bowls of wings a day for life.
  The challenge is eat the six wings that have about 1.2 million skoville units of heat (a jalapeño is about 5,000)",
  "deal" => "Wall Of Fame",
  "day" => "Wednesday",
  "food_type" => "Wings",
  "picture" => "/images/challenge_images/wings1.jpg"
  })

challenge1.save
challenge2.save
challenge3.save
challenge4.save
challenge5.save
challenge6.save
challenge7.save
challenge8.save
challenge9.save
challenge10.save
challenge11.save
challenge12.save
challenge13.save



