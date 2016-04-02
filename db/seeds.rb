# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Publisher.destroy_all
Director.destroy_all
Movie.destroy_all
Actor.destroy_all

marvel = Publisher.create(name: "Marvel")
dc = Publisher.create(name: "DC")

zack = Director.create(name: "Zack Snyder", image: "zack.jpg")
joe = Director.create(name: "Joe Johnston", image: "joe.jpg")
russo = Director.create(name: "Anthony Russo", image: "russo.jpg")

dawnofjustice = Movie.create(title: "Batman v Superman: Dawn of Justice", image: "dawnofjustice.jpg", runtime: "151 min", budget: "$250,000,000", opening: "2016", synopsis: "Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.", director: zack, publisher: dc)
manofsteel = Movie.create(title: "Man of Steel", image: "ManOfSteel.jpg", runtime: "143 min", budget: "$225,000,000", opening: "2013", synopsis: "Clark Kent, one of the last of an extinguished race disguised as an unremarkable human, is forced to reveal his identity when Earth is invaded by an army of survivors who threaten to bring the planet to the brink of destruction.", director: zack, publisher: dc)
firstavenger = Movie.create(title: "Captain America: The First Avenger", image: "firstavenger.jpg", runtime: "124 min", budget: "$140,000,000", opening: "2011", synopsis: "Steve Rogers, a rejected military soldier transforms into Captain America after taking a dose of a Super-Soldier serum. But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization.", director: joe, publisher: marvel)
wintersoldier = Movie.create(title: "Captain America: The Winter Soldier", image: "wintersoldier.jpg", runtime: "136 min", budget: "$170,000,000", opening: "2014", synopsis: "As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and Shield agent, the Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.", director: russo, publisher: marvel)

cavill = Actor.create(name: "Henry Cavill", image: "cavill.jpg", movie: manofsteel)
amy = Actor.create(name: "Amy Adams", image: "amy.jpg", movie: manofsteel)
shannon = Actor.create(name: "Michael Shannon", image: "shannon.jpg", movie: manofsteel)
chris = Actor.create(name: "Chris Evans", image: "chris.jpg", movie: firstavenger)
hugo = Actor.create(name: "Hugo Weaving", image: "hugo.jpg", movie: firstavenger)
samuel = Actor.create(name: "Samuel L. Jackson", image: "samuel.jpg", movie: firstavenger)
affleck = Actor.create(name: "Ben Affleck", image: "affleck.jpg", movie: dawnofjustice)
scarlett = Actor.create(name: "Scarlett Johansson", image: "scarlett.jpg", movie: wintersoldier)
