# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.destroy_all
Movie.create!(JSON.parse(File.read("db/movies.json")))

# marvel = Publisher.create(name: "Marvel")
# dc = Publisher.create(name: "DC")
#
# zack = Director.create(name: "Zack Snyder", image: "zack.jpg")
# joe = Director.create(name: "Joe Johnston", image: "joe.jpg")
# russo = Director.create(name: "Anthony Russo", image: "russo.jpg")
# tim = Director.create(name: "Tim Miller", image: "tim.jpg")
# david = Director.create(name: "David Ayer", image: "david.jpg")
# patty = Director.create(name: "Patty Jenkins", image: "patty.jpg")
#
# dawnofjustice = Movie.create(title: "Dawn of Justice", image: "dawnofjustice.jpg", runtime: "151 min", budget: "$250,000,000", opening: "2016", synopsis: "Following his titanic struggle against General Zod, Metropolis has been razed to the ground and Superman is the most controversial figure in the world. While for many he is still an emblem of hope, a growing number of people consider him a threat to humanity, seeking justice for the chaos he has brought to Earth. As far as Bruce Wayne is concerned, Superman is clearly a danger to society. He fears for the future of the world with such a reckless power left ungoverned, and so he dons his mask and cape to right Superman's wrongs. The rivalry between them is furious, fueled by bitterness and vengeance, and nothing can dissuade them from waging this war. However, a dark new threat arises in the form of a third man: one who has a power greater than either of them to endanger the world and cause total destruction!", director: zack, publisher: dc)
# manofsteel = Movie.create(title: "Man of Steel", image: "ManOfSteel.jpg", runtime: "143 min", budget: "$225,000,000", opening: "2013", synopsis: "A young boy learns that he has extraordinary powers and is not of this Earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.", director: zack, publisher: dc)
# suicidesquad = Movie.create(title: "Suicide Squad", image: "suicidesquad.jpg", runtime: "143 min", budget: "$275,000,000", opening: "2016", synopsis: "A secret government agency run by Amanda Waller, named A.R.G.U.S creates a task force comprising super villains, the Suicide Squad. They are assigned to execute dangerous tasks in exchange for shorter prison sentences.", director: david, publisher: dc)
# wonderwoman = Movie.create(title: "Wonder Woman", image: "wonderwoman.jpg", runtime: "143 min", budget: "$275,000,000", opening: "2017", synopsis: "The Amazonian princess-warrior Diana left her lush tropical island to dwell in our urban cityscapes of glass and steel. Tutored in the ways of the Greek warriors, and outfitted with incredible gifts the Goddess bestowed upon her people, she becomes Paradise Island's emissary to civilization.", director: patty, publisher: dc)
# firstavenger = Movie.create(title: "The First Avenger", image: "firstavenger.jpg", runtime: "124 min", budget: "$140,000,000", opening: "2011", synopsis: "It is 1942, America has entered World War II, and sickly but determined Steve Rogers is frustrated at being rejected yet again for military service. Everything changes when Dr. Erskine recruits him for the secret Project Rebirth. Proving his extraordinary courage, wits and conscience, Rogers undergoes the experiment and his weak body is suddenly enhanced into the maximum human potential. When Dr. Erskine is then immediately assassinated by an agent of Nazi Germany's secret HYDRA research department (headed by Johann Schmidt, a.k.a. the Red Skull), Rogers is left as a unique man who is initially misused as a propaganda mascot; however, when his comrades need him, Rogers goes on a successful adventure that truly makes him Captain America, and his war against Schmidt begins.", director: joe, publisher: marvel)
# wintersoldier = Movie.create(title: "The Winter Soldier", image: "wintersoldier.jpg", runtime: "136 min", budget: "$170,000,000", opening: "2014", synopsis: "For Steve Rogers, awakening after decades of suspended animation involves more than catching up on pop culture; it also means that this old school idealist must face a world of subtler threats and difficult moral complexities. That becomes clear when Director Nick Fury is killed by the mysterious assassin, the Winter Soldier, but not before warning Rogers that SHIELD has been subverted by its enemies. When Rogers acts on Fury's warning to trust no one there, he is branded as a traitor by the organization. Now a fugitive, Captain America must get to the bottom of this deadly mystery with the help of the Black Widow and his new friend, The Falcon. However, the battle will be costly for the Sentinel of Liberty, with Rogers finding enemies where he least expects them while learning that the Winter Soldier looks disturbingly familiar.", director: russo, publisher: marvel)
# deadpool = Movie.create(title: "Deadpool", image: "deadpool.jpg", runtime: "108 min", budget: "$58,000,000", opening: "2016", synopsis: "This is the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.", director: tim, publisher: marvel)
# civilwar = Movie.create(title: "Civil War", image: "civilwar.jpg", runtime: "146 min", budget: "$290,000,000", opening: "2016", synopsis: "After another incident involving the Avengers results in collateral damage, political pressure mounts to install a system of accountability, headed by a governing body to oversee and direct the team. The new status quo fractures the Avengers, resulting in two camps, one led by Steve Rogers and his desire for the Avengers to remain free to defend humanity without government interference, and the other following Tony Stark's surprising decision to support government oversight and accountability.", director: russo, publisher: marvel)
#
# cavill = Actor.create(name: "Henry Cavill", image: "cavill.jpg", movie: manofsteel)
# amy = Actor.create(name: "Amy Adams", image: "amy.jpg", movie: manofsteel)
# shannon = Actor.create(name: "Michael Shannon", image: "shannon.jpg", movie: manofsteel)
# chris = Actor.create(name: "Chris Evans", image: "chris.jpg", movie: firstavenger)
# hugo = Actor.create(name: "Hugo Weaving", image: "hugo.jpg", movie: firstavenger)
# samuel = Actor.create(name: "Samuel L. Jackson", image: "samuel.jpg", movie: firstavenger)
# affleck = Actor.create(name: "Ben Affleck", image: "affleck.jpg", movie: dawnofjustice)
# scarlett = Actor.create(name: "Scarlett Johansson", image: "scarlett.jpg", movie: wintersoldier)
# ryan = Actor.create(name: "Ryan Reynolds", image: "ryan.jpg", movie: deadpool)
# morena = Actor.create(name: "Morena Baccarin", image: "morena.jpg", movie: deadpool)
# tj = Actor.create(name: "T.J. Miller", image: "tj.jpg", movie: deadpool)
# will = Actor.create(name: "Will Smith", image: "will.jpg", movie: suicidesquad)
# jared = Actor.create(name: "Jared Leto", image: "jared.jpg", movie: suicidesquad)
# margot = Actor.create(name: "Margot Robbie", image: "margot.jpg", movie: suicidesquad)
# downey = Actor.create(name: "Robert Downey, Jr.", image: "downey.jpg", movie: civilwar)
# sebastian = Actor.create(name: "Sebastian Stan", image: "sebastian.jpg", movie: civilwar)
# gal = Actor.create(name: "Gal Gadot", image: "gal.jpg", movie: wonderwoman)
# robin = Actor.create(name: "Robin Wright", image: "robin.jpg", movie: wonderwoman)
# pine = Actor.create(name: "Chris Pine", image: "pine.jpg", movie: wonderwoman)
