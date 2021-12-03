20.times do
    days = ["Tuesday", "Wednesday", "Monday", "Friday", "Thursday", 
    "Saturday", "Sunday"]
    names = ["Rick and Morty", "Games of Thrones", "Breaking Bad",
    "Wheel of Time"]
    networks = ["Fox", "ABC", "CBS", "NBC"]
    seasons = ["one", "two", "three", "four", "five"]
    Show.create({
        name: names.sample,
        day: days.sample,
        network: networks.sample,
        rating: rand(11),
        season: seasons.sample
    })
end