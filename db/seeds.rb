# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users_array = [
{
first_name: "Gary",
last_name: "Cohen",
email: "gary@deways.com",
picture: File.new('app/assets/images/seed_users/1.jpg'),
phone_number: "0600000000",
password: "supermotdepasse1",
password_confirmation: "supermotdepasse1"
},
{
first_name: "Anissia",
last_name: "Tcherni",
email: "anissia@djump.com",
picture: File.new('app/assets/images/seed_users/2.jpg'),
phone_number: "0600000000",
password: "supermotdepasse1",
password_confirmation: "supermotdepasse1"
},
{
first_name: "Nadia",
last_name: "Robinet",
email: "nadia@sfr.com",
picture: File.new('app/assets/images/seed_users/3.jpg'),
phone_number: "0600000000",
password: "supermotdepasse1",
password_confirmation: "supermotdepasse1"
},
{
first_name: "Alexandre",
last_name: "Grandremy",
email: "alexandre@deways.com",
picture: File.new('app/assets/images/seed_users/4.jpg'),
phone_number: "0600000000",
password: "supermotdepasse1",
password_confirmation: "supermotdepasse1"
},
{
first_name: "Romain",
last_name: "Paillard",
email: "romain@lewagon.org",
picture: File.new('app/assets/images/seed_users/5.jpg'),
phone_number: "0600000000",
password: "supermotdepasse1",
password_confirmation: "supermotdepasse1"
}
]

users_array.each do |usr|
  user = User.new(usr)
  user.save
end



Car.destroy_all

cars_array = [
{
make: "Volkswagen",
model: "Golf IV 1.9 SDI",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2000",
category: "Citadine",
seats: 5,
user_id: 1,
picture: File.new('app/assets/images/seed/1/1.jpeg'),
doors: "5",
daily_rate: 25,
description: "Véhicule très agréable a conduire, bonne tenue de route. Coffre spacieux idéal pour vacances ou week end en province. Faible consommation de carburant, et propreté intérieure garantie.
Éraflures très légères en extérieur, très bon entretien intérieur.
Si vous souhaitez profiter de la robustesse et du confort Volswagen a petit prix, n'hésitez pas a me contacter. Échanges cordiaux et respectueux.",
gaz_consumption: "4",
available: true
},

{
make: "Dacia",
model: "Duster prestige",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2014",
category: "4x4",
seats: 4,
user_id: 2,
picture: File.new('app/assets/images/seed/2/1.jpeg'),
doors: "5",
daily_rate: 36,
description: "",
gaz_consumption: "7",
available: true
},

{
make: "Seat",
model: "Ibiza 12V",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2008",
category: "Citadine",
seats: 5,
user_id: 3,
picture: File.new('app/assets/images/seed/3/1.jpeg'),
doors: "5",
daily_rate: 24,
description: "Seat Ibiza 12V 5CV
Bon état général
Quelques accros et rayures sur l'extérieur
Fenêtres électriques (fenêtre arrière gauche HS)
Bien entretenue

Horaires d’ouverture du parking :

Lundi à Jeudi : 16h à 21h
Vendredi : 16h à 22h
Samedi : 8h à 12h et 18h à 22h
Dimanche : 18h à 00h",
gaz_consumption: "7",
available: true
},

{
make: "Renault",
model: "Trafic Passenger",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2007",
category: "Minibus",
seats: 9,
user_id: 4,
picture: File.new('app/assets/images/seed/4/1.jpeg'),
doors: "5",
daily_rate: 59,
description: "",
gaz_consumption: "8",
available: true
},

{
make: "Toyota",
model: "Prius II",
motorisation: "Hybride",
gear_box: "Automatique",
year: "2005",
category: "Berline",
seats: 9,
user_id: 5,
picture: File.new('app/assets/images/seed/5/1.jpeg'),
doors: "5",
daily_rate: 24,
description: "Arrangement possible pour une prise en charge et une restitution du véhicule à la gare SNCF ou l'aéropor",
gaz_consumption: "5",
available: true
},

{
make: "Renault",
model: "Kangoo Express 1.9D",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2001",
category: "Utilitaire",
seats: 2,
user_id: 1,
picture: File.new('app/assets/images/seed/6/1.jpeg'),
doors: "5",
daily_rate: 9,
description: "A",
gaz_consumption: "4",
available: true
},

{
make: "Renault",
model: "Wind",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2011",
category: "Cabriolet",
seats: 2,
user_id: 3,
picture: File.new('app/assets/images/seed/7/1.jpeg'),
doors: "3",
daily_rate: 20,
description: "cabriolet 2 places en excellent état.
Location par période de 15 jours souhaitée.",
gaz_consumption: "7",
available: true
},

{
make: "Peugeot",
model: "207",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2010",
category: "Citadine",
seats: 5,
user_id: 2,
picture: File.new('app/assets/images/seed/8/1.jpeg'),
doors: "5",
daily_rate: 28,
description: "Excellent état général. Aucun problème particulier à signaler.",
gaz_consumption: "5",
available: true
},

{
make: "Renault",
model: "Modus 1.5 dCi 65 Confort Expression",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2005",
category: "Citadine",
seats: 5,
user_id: 3,
picture: File.new('app/assets/images/seed/9/1.jpeg'),
doors: "5",
daily_rate: 23,
description: "Voiture bien entretenue, l'intérieur est assez propre.
Bénéficiant de la climatisation et étant très modulable, elle est spacieuse et compacte et donc idéale pour les petites familles.
Elle dispose du stationnement résidentiel dans 4 zones du 15ème arrondissement.",
gaz_consumption: "6",
available: true
},

{
make: "Peugeot",
model: "208",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2012",
category: "Citadine",
seats: 5,
user_id: 4,
picture: File.new('app/assets/images/seed/10/1.jpeg'),
doors: "5",
daily_rate: 35,
description:"
Bien entretenue - dort en parking fermé",
gaz_consumption: "5",
available: true
},

{
make: "Mercedes",
model: "Vito",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2012",
category: "Minibus",
seats: 9,
user_id: 1,
picture: File.new('app/assets/images/seed/11/1.jpeg'),
doors: "4",
daily_rate: 59,
description: "Véhicule en très bon état, mécanique et carrosserie. Entretien régulier.
Pour éviter les bouchons, possibilité de location d'un GPS info trafic, pour 10€/location",
gaz_consumption: "8",
available: true
},

{
make: "Citroën",
model: "C4 Coupé VTS 180cv",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2007",
category: "Coupé",
seats: 5,
user_id: 2,
picture: File.new('app/assets/images/seed/12/1.jpeg'),
doors: "3",
daily_rate: 40,
description: "Amis automobilistes Bonjour !
Bonne routière sportive et confortable avec toit panoramique, vous prendrez plaisir à conduire ma voiture pour vos virées à la campagne ou juste pour vos expéditions à IKEA ;)

Je travaille depuis chez moi et suis donc très flexible sur les horaires, même à la dernière minute.

Lieu de RDV: Quartier Faidherbe-Chaligny / Charonne / Reuilly-Diderot
Au besoin, je peux vous déposer et/ou reprendre la voiture à Gare de Lyon pour faciliter vos déplacements.

à très vite !
Adélaïde",
gaz_consumption: "8",
available: true
},

{
make: "Renault",
model: "Espace IV",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2003",
category: "Familiale",
seats: 7,
user_id: 3,
picture: File.new('app/assets/images/seed/13/1.jpeg'),
doors: "5",
daily_rate: 40,
description: "Bon état général. Contrôle technique récent.
Pneus Michelin neufs.
Autoradio. Boitier pour 6 CD.
Grand coffre. 5 sièges arrières amovibles. Barres de toit permanentes.",
gaz_consumption: "11",
available: true
},

{
make: "Citroën",
model: "C3 1.6i 16v 110cv",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2003",
category: "Citadine",
seats: 5,
user_id: 4,
picture: File.new('app/assets/images/seed/14/1.jpeg'),
doors: "5",
daily_rate: 30,
description: "",
gaz_consumption: "7",
available: true
},

{
make: "Renault",
model: "Grand Scenic 136cv",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "2013",
category: "Familiale",
seats: 5,
user_id: 5,
picture: File.new('app/assets/images/seed/15/1.jpeg'),
doors: "5",
daily_rate: 50,
description: "Voiture en excellent état . Kit main libre / bluetooth",
gaz_consumption: "6",
available: true
},

{
make: "Peugeot",
model: "206+",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2013",
category: "Citadine",
seats: 5,
user_id: 1,
picture: File.new('app/assets/images/seed/16/1.jpeg'),
doors: "5",
daily_rate: 33,
description: "",
gaz_consumption: "7",
available: true
},

{
make: "Peugeot",
model: "307",
motorisation: "Essence",
gear_box: "Manuelle",
year: "2001",
category: "Berline",
seats: 5,
user_id: 2,
picture: File.new('app/assets/images/seed/17/1.jpg'),
doors: "3",
daily_rate: 30,
description: "",
gaz_consumption: "5",
available: true
},

{
make: "Peugeot",
model: "Boxer 1.9D",
motorisation: "Diesel",
gear_box: "Manuelle",
year: "1998",
category: "Utilitaire",
seats: 3,
user_id: 3,
picture: File.new('app/assets/images/seed/18/1.jpeg'),
doors: "4",
daily_rate: 30,
description: "Camion pouvant servir pour un déménagement ou autre.
Porte latérale enfoncée sur le bas mais n empêchant en aucun cas sa fonctionnalité.
Plancher bois.
Sur demande, possibilité se prêt d'un diable.",
gaz_consumption: "7",
available: true
},

]

cars_array.each do |car|
  Car.create(car)
end

Address.destroy_all

addresses_array = [
{
  address: "30 rue des Trois Bornes 75011 Paris",
  car_id: 1,
},
{
  address: "96 rue de la Folie Méricourt 75011 Paris",
  car_id: 2,
},
{
  address: "13 rue Yves Toudic 75010 Paris",
  car_id: 3,
},
{
  address: "25 rue du Petit Musc 75004 Paris",
  car_id: 4,
},
{
  address: "42 avenue Gabriel 75008 Paris",
  car_id: 5,
},
{
  address: "12 rue Riquet 75019 Paris",
  car_id: 6,
},
{
  address: "1 Villa Léandre 75018 Paris",
  car_id: 7,
},
{
  address: "65 Rue Rambuteau 75004 Paris",
  car_id: 8,
},
{
  address: "18 Rue Étienne Marcel 75002 Paris",
  car_id: 9,
},
{
  address: "30, rue des Trois Bornes 75011 Paris",
  car_id: 10,
},
{
  address: "1 Quai Austerlitz 75013 Paris",
  car_id: 11,
},
{
  address: "75 Rue la Condamine 75017 Paris",
  car_id: 12,
},
{
  address: "111 Rue du Faubourg Poissonnière 75010 Paris",
  car_id: 13,
},
{
  address: "166 Rue Montmartre 75002 Paris",
  car_id: 14,
},
{
  address: "47 Bis Rue des Vinaigriers 75010 ",
  car_id: 15,
},
{
  address: "23 Rue des Dames 75017 Paris",
  car_id: 16,
},
{
  address: "207 Rue de Tolbiac 75013 Paris",
  car_id: 17,
},
{
  address: "14 Rue Stanislas 75006 Paris",
  car_id: 18,
}
]

addresses_array.each do |address|
  Address.create(address)
end


