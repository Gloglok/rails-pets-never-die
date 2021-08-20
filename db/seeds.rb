# if Rails.env.development?
puts "Cleaning database..."

StuffedAnimal.destroy_all
User.destroy_all
Reservation.destroy_all
# end

puts "Generate users.."

arthur = User.new(first_name: "Arthur", last_name: "Bernard", email: 'arthur@example.com', password: "azerty")
file = File.open(Rails.root.join('db/fixtures/users/avatar-arthur.jpg'))
arthur.avatar.attach(io: file, filename: 'avatar-arthur.jpg', content_type: 'image/jpeg')
arthur.save!

maxime = User.new(first_name: "Maxime", last_name: "Haugmard", email: 'maxime@example.com', password: "azerty")
file = File.open(Rails.root.join('db/fixtures/users/avatar-maxime.jpg'))
maxime.avatar.attach(io: file, filename: 'avatar-maxime.jpg', content_type: 'image/jpeg')
maxime.save!

fiden = User.new(first_name: "Fiden", last_name: "Han", email: 'fiden@example.com', password: "azerty")
file = File.open(Rails.root.join('db/fixtures/users/avatar-fiden.jpg'))
fiden.avatar.attach(io: file, filename: 'avatar-fiden.jpg', content_type: 'image/jpeg')
fiden.save!

louis = User.new(first_name: "Louis", last_name: "Duquennoy", email: 'louis@example.com', password: "azerty")
file = File.open(Rails.root.join('db/fixtures/users/avatar-louis.jpg'))
louis.avatar.attach(io: file, filename: 'avatar-louis.jpg', content_type: 'image/jpeg')
louis.save!

melanie = User.new(first_name: "Melanie", last_name: "Rat", email: 'melanie@example.com', password: "azerty")
file = File.open(Rails.root.join('db/fixtures/users/avatar-melanie.jpg'))
melanie.avatar.attach(io: file, filename: 'avatar-melanie.jpg', content_type: 'image/jpeg')
melanie.save!

puts "Generate 13 stuffed animals..."

baloo = StuffedAnimal.new(
  name: 'Baloo',
  species: 'ours',
  description: "Baloo est un personnage jovial, décontracté, qui aime s'amuser et préfère fuir les responsabilités. Véritable mentor de Mowgli, il passe la plupart de son temps à se reposer et profiter de la vie. Sa personnalité est très différente de celle du personnage imaginé par Kipling, chez qui il joue plutôt le rôle d'un instructeur assez sévère",
  address: 'Kabupaten Gianyar, Bali 80582',
  rebirth_date: '26/08/1996',
  price: 211,
  weight: 500.0,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/bear.jpg'))
baloo.photo.attach(io: file, filename: 'bear.jpg', content_type: 'image/jpeg')
baloo.save!

chafouin = StuffedAnimal.new(
  name: 'Chafouin',
  species: 'chat',
  description: "Le Chat de Cheshire est un être magique qui a le pouvoir d'apparaître et de disparaître à volonté, s'évaporant fréquemment pour ne laisser brièvement voir que ses yeux, puis son sourire denté ou bien sa queue.Il sait aussi se démembrer, pouvant se tenir debout sur sa tête. Il sait sourire, chose normalement impossible pour un chat, et le fait en permanence.",
  address: '2 Nilüfer Cd. No:3, 16160 Bursa, Turquie',
  rebirth_date: '20/02/1986',
  price: 20,
  weight: 10.0,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/cat.jpg'))
chafouin.photo.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpeg')
chafouin.save!

scooby_doo = StuffedAnimal.new(
  name: 'Scooby Doo',
  species: 'chien',
  description: "Mascotte de l'équipe Mystère et compagnie. Son nom complet est Scoobert-Doo 16. C'est aussi le meilleur ami de Sammy. Il est très gourmand et très peureux mais si ses amis sont en danger, il arrive toujours à surmonter sa peur pour leur venir en aide. Il prononce à la fin de chaque épisode : Scooby-Dooby-Doo ",
  address: 'Avenida Sarmiento, Buenos Aires, Argentine',
  rebirth_date: '26/04/1986',
  price: 33,
  weight: 50.9,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/dog.jpg'))
scooby_doo.photo.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpeg')
scooby_doo.save!

franck = StuffedAnimal.new(
  name: 'Franck',
  species: 'chien',
  description: "En ce qui concerne le passé de Frank, il ne sait rien, sauf qu'il est un étranger vivant sur Remooliano terre bien avant les événements de premier long métrage, et qui a travaillé si souvent avec MIB pour provoquer K Il le décrit comme le plus grand expert en matière de politique intergalactatteique à la disposition de l'organisation.",
  address: "Rue des Droits de l'Homme, 59430 Dunkerque",
  rebirth_date: '13/04/2002',
  price: 50,
  weight: 11.3,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/dog2.jpg'))
franck.photo.attach(io: file, filename: 'dog2.jpg', content_type: 'image/jpeg')
franck.save!

sobaka = StuffedAnimal.new(
  name: 'Sobaka',
  species: 'loup',
  description: 'Loup affectif qui a subi un légèr changement à cause de la radioactivité, attention! taux becquerel au-dessus de la moyenne',
  address: 'Chornobyl, Kyiv Oblast, Ukraine',
  rebirth_date: '26/04/1986',
  price: 150,
  weight: 12.6,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/dog3.jpg'))
sobaka.photo.attach(io: file, filename: 'dog3.jpg', content_type: 'image/jpeg')
sobaka.save!

rox = StuffedAnimal.new(
  name: 'Rox',
  species: 'renard',
  description: "Lorsqu'il vit chez la veuve Tartine, Rox fait preuve d'une grande gentillesse envers ses elle et ses congénères et d'une grande gratitude envers celle qui l'a recueilli. En raison de sa fréquente solitude, il cherche à dissiper son ennui en explorant les environs et est d'un naturel curieux, joueur et insouciant, ce qui lui attire d'importants ennuis avec ses voisins",
  address: '725 5th Avenue, New York, NY 10022, États-Unis',
  rebirth_date: '18/12/2007',
  price: 97,
  weight: 5.4,
  user_id: maxime.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/fox.jpg'))
rox.photo.attach(io: file, filename: 'fox.jpg', content_type: 'image/jpeg')
rox.save!

robin = StuffedAnimal.new(
  name: 'Robin',
  species: 'renard',
  description: "Malgré ses activités de voleur, Robin est très honorable et altruiste puisqu'il a pour visée de voler aux riches pour donner aux nécessiteux, comme à la famille de Veuve Lapin, offrant même des cadeaux d'anniversaire au jeune Bobby. Il risque sa vie pour secourir Tagalong vers la fin du long-métrage. Cette bravoure et cette générosité sont sources de sa popularité parmi les habitants de Nottingham.Robin a également un côté romantique, en étant profondément sous le charme de son amie d'enfance, Marianne, à qui il fait sa demande en mariage, prenant des risques pour la revoir.",
  address: '2920 Zoo Dr, San Diego, CA 92101, États-Unis',
  rebirth_date: '31/12/1999',
  price: 142,
  weight: 1.4,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/fox2.jpg'))
robin.photo.attach(io: file, filename: 'fox2.jpg', content_type: 'image/jpeg')
robin.save!

simba = StuffedAnimal.new(
  name: 'Simba',
  species: 'lion',
  description: 'Simba est un jeune lionceau insouciant et turbulent qui doit succéder à son père Mufasa, le très respecté roi des hautes terres d’Afrique. Mais Simba va être poussé à l’exil par Scar, son oncle malveillant. Perdu et isolé des siens, le jeune lion va faire la connaissance de Timon et Pumbaa. Ces drôles de compagnons vont lui apprendre à voir la vie du bon côté grâce à une philosophie toute simple : « Hakuna Matata » ! L’héritier du trône va néanmoins devoir faire face à son destin et reprendre sa place dans le « cycle de la vie »',
  address: 'Unnamed Road, Nairobi, Kenya',
  rebirth_date: '11/04/2008',
  price: 72,
  weight: 1.7,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/lion.jpg'))
simba.photo.attach(io: file, filename: 'lion.jpg', content_type: 'image/jpeg')
simba.save!

bruce = StuffedAnimal.new(
  name: 'Bruce',
  species: 'requin',
  description: "Bruce n'a qu'un désir : être l'ami de toute le monde. Bruce, Enclume et Chumy sont de super potes. Bruce est le chef du gang. Ces trois requins sont membres des Mangeurs de Poissons Anonymes. Tous trois sont tourmentés par leur désir naturel de manger du poisson et par leur impopularité auprès desdits poissons et de la population de l'océan en général. Ils ont donc opté pour un style de vie végétarien, ont juré de renoncer à manger du poisson, et mènent une vie bien sous tous rapports",
  address: '1638 Steve Irwin Way, Beerwah QLD 4519, Australie',
  rebirth_date: '21/09/2012',
  price: 59,
  weight: 400.0,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/shark.jpg'))
bruce.photo.attach(io: file, filename: 'shark.jpg', content_type: 'image/jpeg')
bruce.save!

timon = StuffedAnimal.new(
  name: 'Timon',
  species: 'suricate',
  description: " Mammifère carnivore de la famille des Mangoustes (et des chiens de prairie) vivant dans le sud de l'Afrique. Il est d'un caractère futé, imprévisible et furtif. D'une énergie intarissable, entraînante et optimiste, ils ont pour devise « Hakuna matata » qui signifie « sans souci ».",
  address: '2 Paul Kruger Street, Pretoria Central, Pretoria, 0002, Afrique du Sud',
  rebirth_date: '09/03/2005',
  price: 22,
  weight: 3.3,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/belette.jpg'))
timon.photo.attach(io: file, filename: 'belette.jpg', content_type: 'image/jpeg')
timon.save!

totoro = StuffedAnimal.new(
  name: 'Totoro',
  species: 'chat',
  description: 'Totoro est une créature rare et fascinante, un esprit de la forêt. Il se nourrit de glands et de noix. Il dort le jour, mais les nuits de pleine lune, il aime jouer avec des ocarinas magiques. Il peut voler et est invisible aux yeux des humains.',
  address: "Nagakute, Préfecture d'Aichi 480-1342 Japon",
  rebirth_date: '11/02/1998',
  price: 43,
  weight: 666.6,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/cat2.jpg'))
totoro.photo.attach(io: file, filename: 'cat2.jpg', content_type: 'image/jpeg')
totoro.save!

chat_potte = StuffedAnimal.new(
  name: 'Le Chat Potté',
  species: 'chat',
  description: "Individualiste et charmeur, le Chat Potté est un Don Juan, comme le suggère une scène de Shrek le troisième, attirant ses congénères du beau sexe, leur promettant l'amour éternel mais prenant la fuite dès qu'elles semblent vouloir s'attacher à lui. Il n'aime pas la compagnie encombrante et tumultueuse des enfants de l'Âne lorsque ceux-ci se jettent sur lui, alors qu'ils le prennent pour leur père.",
  address: 'Ocean Park, Hong Kong',
  rebirth_date: '20/11/2007',
  price: 67,
  weight: 10.1,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/cat3.jpg'))
chat_potte.photo.attach(io: file, filename: 'cat3.jpg', content_type: 'image/jpeg')
chat_potte.save!

scrat = StuffedAnimal.new(
  name: 'Scrat',
  species: 'écureuil',
  description: "Scrat est un « écureuil à dents de sabre ». Son nom est un « mot-valise », contraction de 'squirrel' (écureuil en anglais) et de rat. Il est très connu pour être obsédé par un gland, mettant constamment sa vie en danger pour l'attraper. Le fait qu'il n'arrive jamais à ses fins et l'importance que semble mettre le destin à l'empêcher d'atteindre son but en fait presque l'allégorie de la malchance et de la persévérance.",
  address: '55 Rue du Faubourg Saint-Honoré, 75008 Paris',
  rebirth_date: '22/07/2001',
  price: 87,
  weight: 50.1,
  user_id: arthur.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/wolf.jpg'))
scrat.photo.attach(io: file, filename: 'wolf.jpg', content_type: 'image/jpeg')
scrat.save!

milka = StuffedAnimal.new(
  name: 'Milka',
  species: 'suricate',
  description: "Milka est une marmotte qui met le chocolat dans le papier d'alu",
  address: '10 Passage de la Poule Noire, 44000 Nantes',
  rebirth_date: '22/02/2011',
  price: 187,
  weight: 30.1,
  user_id: melanie.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/marmotte.jpg'))
milka.photo.attach(io: file, filename: 'marmotte.jpg', content_type: 'image/jpeg')
milka.save!

chaussettes = StuffedAnimal.new(
  name: 'Chaussettes',
  species: 'loup',
  description: "Chaussettes est le meilleur amie de Kevin Costner",
  address: '123 Yonge Street, Toronto, Canada',
  rebirth_date: '12/12/1994',
  price: 287,
  weight: 130.1,
  user_id: melanie.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/wolf1.jpg'))
chaussettes.photo.attach(io: file, filename: 'wolf1.jpg', content_type: 'image/jpeg')
chaussettes.save!

medort = StuffedAnimal.new(
  name: 'Medort',
  species: 'chien',
  description: "Medort est le meilleur amie de l'homme",
  address: '34 Boulevard Vasserot, 83990 Saint-Tropez',
  rebirth_date: '12/12/1984',
  price: 77,
  weight: 105.1,
  user_id: melanie.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/dog4.jpg'))
medort.photo.attach(io: file, filename: 'dog4.jpg', content_type: 'image/jpeg')
medort.save!

alex = StuffedAnimal.new(
  name: 'Alex',
  species: 'lion',
  description: "Alex est le sosie officiel héros de madagascar",
  address: '34 Boulevard Vasserot, 83990 Saint-Tropez',
  rebirth_date: '22/10/2014',
  price: 165,
  weight: 245.9,
  user_id: melanie.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/lion2.jpg'))
alex.photo.attach(io: file, filename: 'lion2.jpg', content_type: 'image/jpeg')
alex.save!

clarence = StuffedAnimal.new(
  name: 'Clarence',
  species: 'lion',
  description: "Clarence est le héros de Daktari",
  address: 'leeland street, houston, texas',
  rebirth_date: '20/10/1991',
  price: 225,
  weight: 315,
  user_id: fiden.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/lion3.jpg'))
clarence.photo.attach(io: file, filename: 'lion3.jpg', content_type: 'image/jpeg')
clarence.save!

ourscoca = StuffedAnimal.new(
  name: "L'ours-coca",
  species: 'lion',
  description: "c’est en 1993, lors de la mise en place de la campagne « Always Coca-Cola », que The Coca-Cola Company a lancé le spot, « Northern Lights » dont le héros est devenu l'un des symboles les plus populaires de la publicité Coca-Cola : L'ours-coca",
  address: 'La Mirada Avenue, Los Angeles, CA 90029, États-Unis',
  rebirth_date: '01/01/1994',
  price: 25,
  weight: 415,
  user_id: fiden.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/bear2.jpg'))
ourscoca.photo.attach(io: file, filename: 'bear2.jpg', content_type: 'image/jpeg')
ourscoca.save!

mordicus = StuffedAnimal.new(
  name: "Mordicus",
  species: 'lion',
  description: "Mordicus est un magnifique requin d'appartement",
  address: 'Lundip Aqqutaa B1664, Nanortalik, Groenland',
  rebirth_date: '21/09/2013',
  price: 115,
  weight: 335,
  user_id: louis.id,
  vote: (100..1000).to_a.sample,
  rating: rand(1.0..5.0).round(2)
)

file = File.open(Rails.root.join('db/fixtures/stuffed_animals/shark2.jpg'))
mordicus.photo.attach(io: file, filename: 'shark2.jpg', content_type: 'image/jpeg')
mordicus.save!

puts "Finished!"
