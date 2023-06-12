require "open-uri"

CartItem.destroy_all
Cart.destroy_all
Game.destroy_all
Item.destroy_all
User.destroy_all

garden_tables = {
  "garden_table_1" => {
    name: "GRÄSÖ",
    room_type: "Jardin",
    category: "Table de jardin",
    description: "Détendez-vous et profitez du plein air avec la table de jardin GRÄSÖ. Un design épuré et une construction robuste pour des repas estivaux mémorables.",
    price: 150
  },
  "garden_table_2" => {
    name: "FALSTER",
    room_type: "Jardin",
    category: "Table de jardin",
    description: "La table de jardin FALSTER combine durabilité et style. Idéale pour partager des repas en famille ou des apéritifs entre amis en été.",
    price: 180
  },
  "garden_table_3" => {
    name: "ÄPPLARÖ",
    room_type: "Jardin",
    category: "Table de jardin",
    description: "La table ÄPPLARÖ est une fusion de fonctionnalité et d'élégance, offrant un grand espace pour les repas et les rassemblements en plein air.",
    price: 200
  },
  "garden_table_4" => {
    name: "LÄCKÖ",
    room_type: "Jardin",
    category: "Table de jardin",
    description: "La table de jardin LÄCKÖ promet de sublimer votre espace extérieur grâce à son design contemporain et sa durabilité exceptionnelle.",
    price: 120
  },
  "garden_table_5" => {
    name: "SOLLERÖN",
    room_type: "Jardin",
    category: "Table de jardin",
    description: "Profitez de l'été avec la table de jardin SOLLERÖN. Son design épuré et sa robustesse font d'elle un choix idéal pour tout espace extérieur.",
    price: 160
  }
}

garden_tables.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/1-1-#{index+1}-table_de_jardin-jardin.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


garden_chairs = {
  "garden_chair_1" => {
    name: "ÄPPLARÖ",
    room_type: "Jardin",
    category: "Chaise de jardin",
    description: "La chaise de jardin ÄPPLARÖ, en bois durable, est parfaite pour des moments de détente au soleil. Confort et style à la fois.",
    price: 40
  },
  "garden_chair_2" => {
    name: "FALSTER",
    room_type: "Jardin",
    category: "Chaise de jardin",
    description: "FALSTER est une chaise de jardin résistante au style minimaliste. Idéale pour les repas en plein air et les moments de détente.",
    price: 50
  },
  "garden_chair_3" => {
    name: "GRÄSÖ",
    room_type: "Jardin",
    category: "Chaise de jardin",
    description: "La chaise de jardin GRÄSÖ offre un confort optimal pour vos moments de détente dans le jardin. Son design élégant se fond dans tout décor extérieur.",
    price: 60
  },
  "garden_chair_4" => {
    name: "LÄCKÖ",
    room_type: "Jardin",
    category: "Chaise de jardin",
    description: "La chaise LÄCKÖ associe confort et durabilité, avec un design qui rehausse le charme de votre espace extérieur. Parfait pour les après-midis d'été.",
    price: 45
  },
  "garden_chair_5" => {
    name: "SOLLERÖN",
    room_type: "Jardin",
    category: "Chaise de jardin",
    description: "Détendez-vous avec la chaise de jardin SOLLERÖN. Une solution durable et stylée pour savourer les moments ensoleillés dans votre jardin.",
    price: 55
  }
}

garden_chairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/1-2-#{index+1}-chaise_de_jardin-jardin.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


garden_armchairs = {
  "garden_armchair_1" => {
    name: "ÄPPLARÖ",
    room_type: "Jardin",
    category: "Fauteuil de jardin",
    description: "Le fauteuil de jardin ÄPPLARÖ est synonyme de relaxation. Sa structure en bois durable garantit un confort sans compromis.",
    price: 80
  },
  "garden_armchair_2" => {
    name: "FALSTER",
    room_type: "Jardin",
    category: "Fauteuil de jardin",
    description: "Le fauteuil de jardin FALSTER offre un design minimaliste avec une construction robuste pour un confort optimal en plein air.",
    price: 90
  },
  "garden_armchair_3" => {
    name: "GRÄSÖ",
    room_type: "Jardin",
    category: "Fauteuil de jardin",
    description: "Résistant et élégant, le fauteuil de jardin GRÄSÖ est parfait pour les longues journées d'été. Profitez du plein air dans le confort.",
    price: 70
  },
  "garden_armchair_4" => {
    name: "LÄCKÖ",
    room_type: "Jardin",
    category: "Fauteuil de jardin",
    description: "Le fauteuil de jardin LÄCKÖ allie confort, durabilité et style. Idéal pour savourer les doux moments d'été dans votre jardin.",
    price: 75
  },
  "garden_armchair_5" => {
    name: "SOLLERÖN",
    room_type: "Jardin",
    category: "Fauteuil de jardin",
    description: "Le fauteuil de jardin SOLLERÖN est une combinaison de style et de fonctionnalité, offrant un confort optimal pour vos moments de détente en extérieur.",
    price: 85
  }
}

garden_armchairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/1-3-#{index+1}-fauteuil_de_jardin-jardin.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end



coffee_tables = {
  "coffee_table_1" => {
    name: "LAMPKÜS",
    room_type: "Salon",
    category: "Table basse",
    description: "La lampe Lampküs incarne la simplicité scandinave. Idéale pour un salon, elle offre un éclairage fonctionnel pour toute la pièce.",
    price: 45
  },
  "coffee_table_2" => {
    name: "HEMNES",
    room_type: "Salon",
    category: "Table basse",
    description: "Avec un design classique, la table basse HEMNES est un incontournable. Elle fournit un espace pratique pour vos magazines ou autres articles essentiels.",
    price: 95
  },
  "coffee_table_3" => {
    name: "LIATORP",
    room_type: "Salon",
    category: "Table basse",
    description: "La table basse LIATORP allie tradition et fonctionnalité. Son design unique offre un grand espace pour tous vos besoins de salon.",
    price: 140
  },
  "coffee_table_4" => {
    name: "KLUBBO",
    room_type: "Salon",
    category: "Table basse",
    description: "La table basse KLUBBO est à la fois minimaliste et fonctionnelle, offrant un espace optimal pour toutes vos nécessités de salon.",
    price: 70
  },
  "coffee_table_5" => {
    name: "VEJMON",
    room_type: "Salon",
    category: "Table basse",
    description: "La table basse VEJMON combine un design élégant avec un rangement fonctionnel. Elle est idéale pour organiser les essentiels du salon tout en restant stylée.",
    price: 110
  }
}

coffee_tables.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/2-1-#{index+1}-table_basse-salon.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end



sofas = {
  "sofa_1" => {
    name: "KLIPPAN",
    room_type: "Salon",
    category: "Canapé",
    description: "Le canapé KLIPPAN, un classique IKEA, offre confort et style. Sa conception compacte le rend idéal pour les petits espaces tout en offrant une assise confortable.",
    price: 240
  },
  "sofa_2" => {
    name: "EKTORP",
    room_type: "Salon",
    category: "Canapé",
    description: "Avec son design traditionnel et son confort exceptionnel, le canapé EKTORP est un choix excellent pour ceux qui privilégient la fonctionnalité sans compromettre le style.",
    price: 400
  },
  "sofa_3" => {
    name: "FÄRLÖV",
    room_type: "Salon",
    category: "Canapé",
    description: "Le canapé FÄRLÖV allie élégance et confort. Ses coussins moelleux et son design attrayant font de ce canapé un excellent ajout à tout salon.",
    price: 500
  },
  "sofa_4" => {
    name: "KLIPPAN",
    room_type: "Salon",
    category: "Canapé",
    description: "Le canapé KLIPPAN allie style et confort. Avec son design minimaliste et ses lignes épurées, il s'adapte parfaitement à tout intérieur moderne.",
    price: 300
  },
  "sofa_5" => {
    name: "LANDSKRO",
    room_type: "Salon",
    category: "Canapé",
    description: "Le canapé LANDSKRO est un choix élégant pour tout salon. Il offre un confort exceptionnel avec une allure qui séduira tous les amateurs de design.",
    price: 600
  }
}


sofas.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/2-2-#{index+1}-canape-salon.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


armchairs = {
  "armchair_1" => {
    name: "POÄNG",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Le fauteuil POÄNG, avec son design iconique et son confort inégalé, offre un espace de détente idéal pour lire un livre ou se détendre après une longue journée.",
    price: 120
  },
  "armchair_2" => {
    name: "STRANDMON",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Le fauteuil STRANDMON offre un confort vintage. Son design classique et son confort exceptionnel en font un ajout idéal à tout salon ou coin lecture.",
    price: 220
  },
  "armchair_3" => {
    name: "EKTORP",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Avec son design traditionnel et son confort douillet, le fauteuil EKTORP est parfait pour ceux qui veulent se détendre avec style et confort.",
    price: 200
  },
  "armchair_4" => {
    name: "FÄRLÖV",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Le fauteuil FÄRLÖV, avec son design élégant et son confort accueillant, est un ajout excellent pour tout espace de vie, apportant une touche de sophistication.",
    price: 240
  },
  "armchair_5" => {
    name: "LANDSKRO",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Le fauteuil LANDSKRO apporte une élégance intemporelle à votre espace de vie. Confortable et sophistiqué, il est parfait pour les moments de détente.",
    price: 300
  }
}

armchairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/2-3-#{index+1}-fauteuil-salon.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


dining_tables = {
  "dining_table_1" => {
    name: "INGATORP",
    room_type: "Salle à manger",
    category: "Table",
    description: "La table INGATORP est parfaitement adaptée aux dîners en famille ou entre amis. Son design extensible permet d'accueillir plus de convives pour des repas mémorables.",
    price: 350
  },
  "dining_table_2" => {
    name: "EKEDALEN",
    room_type: "Salle à manger",
    category: "Table",
    description: "EKEDALEN est une table polyvalente pour chaque occasion. Son système d'extension garantit de la place pour tous, rendant chaque repas plus accueillant.",
    price: 250
  },
  "dining_table_3" => {
    name: "BJURSTA",
    room_type: "Salle à manger",
    category: "Table",
    description: "La table BJURSTA offre une flexibilité maximale, que vous ayez une petite cuisine ou une salle à manger spacieuse. Parfaite pour des repas quotidiens ou des occasions spéciales.",
    price: 300
  },
  "dining_table_4" => {
    name: "NORDEN",
    room_type: "Salle à manger",
    category: "Table",
    description: "NORDEN est une table à la fois robuste et élégante. Son design pliable est pratique pour optimiser l'espace tout en offrant une grande surface pour dîner.",
    price: 200
  },
  "dining_table_5" => {
    name: "LISABO",
    room_type: "Salle à manger",
    category: "Table",
    description: "La table LISABO est un choix moderne pour tout espace de repas. Avec son design épuré et ses lignes simples, elle apporte une touche contemporaine à votre salle à manger.",
    price: 180
  }
}

dining_tables.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/3-1-#{index+1}-table-salle_a_manger.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


dining_chairs = {
  "dining_chair_1" => {
    name: "INGOLF",
    room_type: "Salle à manger",
    category: "Chaise",
    description: "La chaise INGOLF, avec son design classique et son assise confortable, est une excellente addition à toute salle à manger, apportant une touche de charme à vos repas.",
    price: 50
  },
  "dining_chair_2" => {
    name: "NORRARYD",
    room_type: "Salle à manger",
    category: "Chaise",
    description: "NORRARYD est une chaise confortable qui encourage de longues discussions après les repas. Son design élégant complète parfaitement n'importe quelle table de salle à manger.",
    price: 60
  },
  "dining_chair_3" => {
    name: "IDOLF",
    room_type: "Salle à manger",
    category: "Chaise",
    description: "Avec son design minimaliste et son confort, la chaise IDOLF est un ajout pratique et stylé à votre salle à manger, parfaite pour tous les repas.",
    price: 55
  },
  "dining_chair_4" => {
    name: "JANINGE",
    room_type: "Salle à manger",
    category: "Chaise",
    description: "La chaise JANINGE offre un design moderne et durable. Sa forme ergonomique est conçue pour le confort, vous permettant de profiter pleinement de chaque repas.",
    price: 70
  },
  "dining_chair_5" => {
    name: "STEFAN",
    room_type: "Salle à manger",
    category: "Chaise",
    description: "STEFAN est une chaise robuste avec un design intemporel. Elle offre une assise confortable pour un dîner décontracté ou un repas festif.",
    price: 45
  }
}

dining_chairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/3-2-#{index+1}-chaise-salle_a_manger.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

buffets = {
  "buffet_1" => {
    name: "LIATORP",
    room_type: "Salle à manger",
    category: "Buffet",
    description: "Le buffet LIATORP offre un espace de rangement généreux pour la vaisselle et la verrerie. Son design classique apporte une touche d'élégance à votre salle à manger.",
    price: 300
  },
  "buffet_2" => {
    name: "HAVSTA",
    room_type: "Salle à manger",
    category: "Buffet",
    description: "HAVSTA est un buffet durable avec beaucoup d'espace de rangement. Son style traditionnel se marie parfaitement avec tout type de salle à manger.",
    price: 350
  },
  "buffet_3" => {
    name: "BESTÅ",
    room_type: "Salle à manger",
    category: "Buffet",
    description: "Le buffet BESTÅ offre un rangement moderne et pratique. Son design modulable permet de ranger et d'exposer vos objets de manière élégante.",
    price: 200
  },
  "buffet_4" => {
    name: "BRIMNES",
    room_type: "Salle à manger",
    category: "Buffet",
    description: "Le buffet BRIMNES est idéal pour le rangement de la salle à manger. Il offre un espace généreux pour vos assiettes, verres et autres essentiels.",
    price: 150
  },
  "buffet_5" => {
    name: "KALLAX",
    room_type: "Salle à manger",
    category: "Buffet",
    description: "Le buffet KALLAX est un choix polyvalent pour le rangement.Sa conception modulaire offre un espace pour tous vos besoins de salle à manger.",
    price: 120
  }
}

buffets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/3-3-#{index+1}-buffet-salle_a_manger.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


# upper_cabinets = {
#   "upper_cabinet_1" => {
#     name: "SEKTION",
#     room_type: "Cuisine",
#     category: "Meuble haut",
#     description: "Le meuble haut SEKTION est parfait pour optimiser l'espace vertical de votre cuisine. Son design fonctionnel permet de ranger facilement la vaisselle et les ustensiles.",
#     price: 80
#   },
#   "upper_cabinet_2" => {
#     name: "METOD",
#     room_type: "Cuisine",
#     category: "Meuble haut",
#     description: "METOD est un meuble haut qui offre une grande capacité de rangement. Sa structure durable garantit une utilisation de longue durée.",
#     price: 90
#   },
#   "upper_cabinet_3" => {
#     name: "KUNGSBACKA",
#     room_type: "Cuisine",
#     category: "Meuble haut",
#     description: "Le meuble haut KUNGSBACKA, avec son design moderne et épuré, donne une allure contemporaine à votre cuisine tout en offrant un espace de rangement pratique.",
#     price: 120
#   },
#   "upper_cabinet_4" => {
#     name: "VEDDINGE",
#     room_type: "Cuisine",
#     category: "Meuble haut",
#     description: "Le meuble haut VEDDINGE offre une solution de rangement élégante pour votre cuisine. Son design minimaliste s'intègre parfaitement dans les cuisines modernes.",
#     price: 100
#   },
#   "upper_cabinet_5" => {
#     name: "TORHAMN",
#     room_type: "Cuisine",
#     category: "Meuble haut",
#     description: "TORHAMN est un meuble haut offrant un espace de rangement ample. Son design naturel ajoute une touche de chaleur à votre cuisine.",
#     price: 110
#   }
# }

# upper_cabinets.each_with_index do |(_key, value), index|
#   item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
#   file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/4-1-#{index+1}-meubles_haut-cuisine.jpg")
#   item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
# end

# lower_cabinets = {
#   "lower_cabinet_1" => {
#     name: "SEKTION",
#     room_type: "Cuisine",
#     category: "Meuble bas",
#     description: "SEKTION est un meuble bas qui offre un espace de rangement ample pour votre cuisine. Son design fonctionnel permet de garder vos ustensiles de cuisine organisés.",
#     price: 100
#   },
#   "lower_cabinet_2" => {
#     name: "METOD",
#     room_type: "Cuisine",
#     category: "Meuble bas",
#     description: "Le meuble bas METOD offre un grand espace de rangement pour votre vaisselle et vos ustensiles. Sa durabilité et son design pratique en font un choix idéal pour toute cuisine.",
#     price: 120
#   },
#   "lower_cabinet_3" => {
#     name: "KUNGSBACKA",
#     room_type: "Cuisine",
#     category: "Meuble bas",
#     description: "KUNGSBACKA est un meuble bas au design épuré et contemporain. Sa structure solide et son espace de rangement pratique en font un ajout parfait à votre cuisine.",
#     price: 150
#   },
#   "lower_cabinet_4" => {
#     name: "VEDDINGE",
#     room_type: "Cuisine",
#     category: "Meuble bas",
#     description: "Le meuble bas VEDDINGE est à la fois fonctionnel et esthétiquement plaisant. Son design minimaliste ajoutera une touche de modernité à votre cuisine.",
#     price: 140
#   },
#   "lower_cabinet_5" => {
#     name: "TORHAMN",
#     room_type: "Cuisine",
#     category: "Meuble bas",
#     description: "TORHAMN est un meuble bas avec un design chaleureux et naturel. Il offre un espace de rangement généreux pour garder votre cuisine organisée.",
#     price: 130
#   }
# }


# lower_cabinets.each_with_index do |(_key, value), index|
#   item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
#   file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/4-2-#{index+1}-meubles_bas-cuisine.jpg")
#   item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
# end


# kitchen_wardrobes = {
#   "kitchen_wardrobe_1" => {
#     name: "PAX",
#     room_type: "Cuisine",
#     category: "Armoire de cuisine",
#     description: "PAX est une armoire de cuisine polyvalente offrant une grande capacité de rangement. Son design modulable vous permet de personnaliser l'espace selon vos besoins.",
#     price: 250
#   },
#   "kitchen_wardrobe_2" => {
#     name: "GODMORGON",
#     room_type: "Cuisine",
#     category: "Armoire de cuisine",
#     description: "L'armoire de cuisine GODMORGON offre un espace de rangement généreux pour tous vos ustensiles de cuisine. Son design élégant et sa construction durable en font un excellent choix.",
#     price: 300
#   },
#   "kitchen_wardrobe_3" => {
#     name: "IVAR",
#     room_type: "Cuisine",
#     category: "Armoire de cuisine",
#     description: "IVAR est une armoire de cuisine robuste et polyvalente, parfaite pour garder vos ustensiles de cuisine et autres essentiels bien organisés et à portée de main.",
#     price: 200
#   },
#   "kitchen_wardrobe_4" => {
#     name: "BRIMNES",
#     room_type: "Cuisine",
#     category: "Armoire de cuisine",
#     description: "L'armoire de cuisine BRIMNES offre un espace de rangement spacieux pour vos ustensiles de cuisine. Son design simple s'adapte à tous les styles de cuisine.",
#     price: 220
#   },
#   "kitchen_wardrobe_5" => {
#     name: "BESTÅ",
#     room_type: "Cuisine",
#     category: "Armoire de cuisine",
#     description: "L'armoire de cuisine BESTÅ offre une solution de rangement modulable pour votre cuisine. Son design épuré et contemporain s'intègre parfaitement dans n'importe quel espace.",
#     price: 260
#   }
# }

# kitchen_wardrobes.each_with_index do |(_key, value), index|
#   item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
#   file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/4-3-#{index+1}-armoire_de_cuisine-cuisine.jpg")
#   item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
# end


beds = {
  "bed_1" => {
    name: "MALM",
    room_type: "Chambre",
    category: "Lit",
    description: "Le lit MALM offre un design épuré et moderne, idéal pour tout style de chambre. Avec sa structure solide et son sommier confortable, il garantit une bonne nuit de sommeil. L'espace sous le lit peut être utilisé pour le rangement, maximisant ainsi l'utilisation de l'espace.",
    price: 200
  },
  "bed_2" => {
    name: "HEMNES",
    room_type: "Chambre",
    category: "Lit",
    description: "Le lit HEMNES apporte une touche d'élégance traditionnelle à votre chambre. Sa construction robuste assure une utilisation durable, tandis que son design intemporel s'adapte à différentes décorations. Le cadre de lit dispose d'un espace de rangement supplémentaire pour une utilisation optimale de l'espace.",
    price: 250
  },
  "bed_3" => {
    name: "BRIMNES",
    room_type: "Chambre",
    category: "Lit",
    description: "Le lit BRIMNES est un choix pratique et esthétiquement agréable pour toute chambre. Son design contemporain, son confort de couchage et ses solutions de rangement intégrées en font un choix idéal pour les espaces de vie modernes.",
    price: 300
  },
  "bed_4" => {
    name: "NORDLI",
    room_type: "Chambre",
    category: "Lit",
    description: "Le lit NORDLI est conçu pour offrir un confort optimal et une utilisation efficace de l'espace. Avec son design épuré, ses tiroirs de rangement intégrés et son sommier confortable, il garantit une bonne nuit de sommeil tout en gardant votre chambre organisée.",
    price: 350
  },
  "bed_5" => {
    name: "NEIDEN",
    room_type: "Chambre",
    category: "Lit",
    description: "Le lit NEIDEN offre une simplicité élégante à votre espace de couchage. Sa structure en pin massif offre robustesse et durabilité, tandis que son design minimaliste s'intègre facilement dans n'importe quel décor de chambre.",
    price: 180
  }
}


beds.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/5-1-#{index+1}-lit-chambres.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

wardrobes = {
  "wardrobe_1" => {
    name: "PAX",
    room_type: "Chambre",
    category: "Armoire",
    description: "L'armoire PAX est un choix pratique pour le rangement de vos vêtements et accessoires. Avec sa grande capacité de stockage et sa modularité, elle peut être configurée selon vos besoins spécifiques, permettant une organisation optimale de vos articles personnels.",
    price: 300
  },
  "wardrobe_2" => {
    name: "KLEPPSTAD",
    room_type: "Chambre",
    category: "Armoire",
    description: "L'armoire KLEPPSTAD est une solution de rangement polyvalente et spacieuse. Son design simple et fonctionnel permet de ranger et d'organiser efficacement vos vêtements et autres articles personnels, tout en s'intégrant parfaitement à n'importe quel décor de chambre.",
    price: 200
  },
  "wardrobe_3" => {
    name: "BRIMNES",
    room_type: "Chambre",
    category: "Armoire",
    description: "L'armoire BRIMNES offre une combinaison de rangement pratique et de design élégant. Ses nombreuses étagères et tiroirs permettent d'organiser facilement vos vêtements et accessoires, tandis que son allure contemporaine rehausse le style de votre chambre.",
    price: 250
  },
  "wardrobe_4" => {
    name: "HEMNES",
    room_type: "Chambre",
    category: "Armoire",
    description: "L'armoire HEMNES est un choix classique et élégant pour votre chambre. Elle offre une grande capacité de rangement, avec plusieurs étagères et tiroirs pour garder vos vêtements et accessoires soigneusement organisés.",
    price: 350
  },
  "wardrobe_5" => {
    name: "KVIKNE",
    room_type: "Chambre",
    category: "Armoire",
    description: "L'armoire KVIKNE est une solution de rangement moderne et spacieuse. Son design minimaliste, associé à sa fonctionnalité maximale, en fait un ajout parfait pour toute chambre contemporaine cherchant à optimiser l'espace de rangement.",
    price: 280
  }
}



wardrobes.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/5-2-#{index+1}-armoire-chambres.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

nightstands = {
  "nightstand_1" => {
    name: "MALM",
    room_type: "Chambre",
    category: "Table de chevet",
    description: "La table de chevet MALM est une solution de rangement pratique et esthétiquement agréable pour votre chambre. Avec son tiroir pour les petits objets et sa surface pour une lampe de lecture ou un réveil, elle combine fonctionnalité et design dans un seul meuble.",
    price: 50
  },
  "nightstand_2" => {
    name: "HEMNES",
    room_type: "Chambre",
    category: "Table de chevet",
    description: "La table de chevet HEMNES offre un espace de rangement fonctionnel à côté de votre lit. Son design classique et son tiroir spacieux en font un meuble pratique et attrayant pour toute chambre à coucher.",
    price: 60
  },
  "nightstand_3" => {
    name: "BRIMNES",
    room_type: "Chambre",
    category: "Table de chevet",
    description: "La table de chevet BRIMNES est un choix moderne pour votre chambre. Elle offre un espace de rangement pour vos essentiels de nuit et son design épuré complète parfaitement tout décor contemporain.",
    price: 55
  },
  "nightstand_4" => {
    name: "NORDLI",
    room_type: "Chambre",
    category: "Table de chevet",
    description: "La table de chevet NORDLI est un ajout pratique à votre espace de couchage. Avec son tiroir pour le rangement et sa surface pour les essentiels de nuit, elle complète parfaitement la collection de lits NORDLI.",
    price: 70
  },
  "nightstand_5" => {
    name: "TRYSIL",
    room_type: "Chambre",
    category: "Table de chevet",
    description: "La table de chevet TRYSIL est un choix élégant pour votre chambre. Elle offre un tiroir pour le rangement des petits objets et une surface pour les essentiels de nuit, tout en ajoutant une touche de style moderne à votre chambre.",
    price: 65
  }
}



nightstands.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/5-3-#{index+1}-chevet-chambres.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

vanities = {
  "vanity_1" => {
    name: "HEMNES",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque HEMNES / ODENSVIK allie style classique et fonctionnalité. Avec son grand tiroir pour le rangement et sa vasque durable, il transforme votre salle de bain en un espace élégant et organisé.",
    price: 250
  },
  "vanity_2" => {
    name: "GODMORGON",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque GODMORGON / BRÅVIKEN offre une solution de rangement moderne pour votre salle de bain. Sa conception à double vasque et ses tiroirs spacieux permettent une organisation optimale, tout en apportant une touche de modernité.",
    price: 400
  },
  "vanity_3" => {
    name: "LILLÅNGEN",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque LILLÅNGEN est conçu pour les petites salles de bains. Son design compact n'occupe pas beaucoup d'espace, tout en offrant suffisamment de rangement pour vos essentiels de salle de bain.",
    price: 150
  },
  "vanity_4" => {
    name: "FREDEN",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque FREDEN offre une esthétique naturelle à votre salle de bain. Avec son bois massif et sa vasque durable, il est à la fois beau et fonctionnel.",
    price: 350
  },
  "vanity_5" => {
    name: "BRÅVIKEN",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque BRÅVIKEN propose un design moderne et épuré. Ses tiroirs offrent un rangement pratique pour tous vos essentiels de salle de bain, tout en ajoutant une touche de style à votre espace.",
    price: 300
  }
}


vanities.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/6-1-#{index+1}-meuble_vasque-salle_de_bain.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

mirror_cabinets = {
  "mirror_cabinet_1" => {
    name: "GODMORGON",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir GODMORGON transforme votre salle de bain en un espace organisé et élégant. Avec ses étagères réglables et son miroir intégré, il offre une solution de rangement pratique et un design moderne.",
    price: 150
  },
  "mirror_cabinet_2" => {
    name: "LILLÅNGEN",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir LILLÅNGEN offre une solution de rangement compacte pour votre salle de bain. Son miroir intégré et ses étagères ajustables vous permettent de garder vos essentiels de salle de bain organisés et à portée de main.",
    price: 100
  },
  "mirror_cabinet_3" => {
    name: "HEMNES",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir HEMNES apporte une touche de classicisme à votre salle de bain. Ses étagères réglables offrent un espace de rangement pratique, tandis que son miroir intégré ajoute une fonctionnalité supplémentaire à votre salle de bain.",
    price: 120
  },
  "mirror_cabinet_4" => {
    name: "SPIEGELLA",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir SPIEGELLA est un choix simple et élégant pour votre salle de bain. Son miroir intégré et ses étagères offrent un rangement fonctionnel pour tous vos essentiels de salle de bain.",
    price: 80
  },
  "mirror_cabinet_5" => {
    name: "KOLBJÖRN",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir KOLBJÖRN est conçu pour résister à l'humidité et à l'usure. Son miroir intégré et ses étagères robustes offrent un rangement pratique, tout en ajoutant une touche de style rustique à votre salle de bain.",
    price: 200
  }
}


mirror_cabinets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/6-2-#{index+1}-meuble_miroir-salle_de_bain.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

bathroom_cabinets = {
  "bathroom_cabinet_1" => {
    name: "GODMORGON",
    room_type: "Salle de bain",
    category: "Armoire de salle de bain",
    description: "L'armoire de salle de bain GODMORGON offre une solution de rangement élégante et moderne. Ses étagères réglables permettent d'organiser facilement vos essentiels de salle de bain, tandis que son design contemporain rehausse le style de votre salle de bain.",
    price: 200
  },
  "bathroom_cabinet_2" => {
    name: "LILLÅNGEN",
    room_type: "Salle de bain",
    category: "Armoire de salle de bain",
    description: "L'armoire de salle de bain LILLÅNGEN est conçue pour les espaces restreints. Elle offre un rangement fonctionnel avec ses étagères ajustables, tout en apportant une touche d'élégance à votre salle de bain grâce à son design minimaliste.",
    price: 150
  },
  "bathroom_cabinet_3" => {
    name: "HEMNES",
    room_type: "Salle de bain",
    category: "Armoire de salle de bain",
    description: "L'armoire de salle de bain HEMNES offre une combinaison de style classique et de fonctionnalité. Ses étagères réglables fournissent un rangement pratique, tandis que son design intemporel apporte une touche d'élégance à votre salle de bain.",
    price: 220
  },
  "bathroom_cabinet_4" => {
    name: "FULLÄN",
    room_type: "Salle de bain",
    category: "Armoire de salle de bain",
    description: "L'armoire de salle de bain FULLÄN est simple mais fonctionnelle. Elle offre un rangement essentiel avec ses étagères robustes, tout en étant suffisamment compacte pour s'intégrer dans les petites salles de bain.",
    price: 130
  },
  "bathroom_cabinet_5" => {
    name: "KOLBJÖRN",
    room_type: "Salle de bain",
    category: "Armoire de salle de bain",
    description: "L'armoire de salle de bain KOLBJÖRN est à la fois robuste et élégante. Ses étagères résistantes offrent un espace de rangement ample pour vos articles de salle de bain, tout en ajoutant une touche de rusticité à votre espace.",
    price: 250
  }
}



bathroom_cabinets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/6-3-#{index+1}-armoire_de_salle_de_bain-salle_de_bain.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

childrens_beds = {
  "childrens_bed_1" => {
    name: "KURA",
    room_type: "Chambre enfants",
    category: "Lit enfant",
    description: "Le lit réversible KURA offre flexibilité et amusement. Sa construction robuste et sa fonctionnalité double comme lit surélevé ou standard en font un choix parfait pour l'espace de sommeil de votre enfant.",
    price: 150
  },
  "childrens_bed_2" => {
    name: "BUSUNGE",
    room_type: "Chambre enfants",
    category: "Lit enfant",
    description: "Le lit extensible BUSUNGE grandit avec votre enfant, assurant un espace de sommeil confortable à toutes les étapes. Sa conception élégante et ses coins arrondis le rendent à la fois attrayant et sûr.",
    price: 200
  },
  "childrens_bed_3" => {
    name: "SLÄKT",
    room_type: "Chambre enfants",
    category: "Lit enfant",
    description: "Le lit SLÄKT est parfait pour les enfants plus âgés, offrant un espace de sommeil confortable et un design moderne. Avec ses options de rangement supplémentaires, il contribue à garder la chambre de votre enfant organisée.",
    price: 250
  },
  "childrens_bed_4" => {
    name: "MINNEN",
    room_type: "Chambre enfants",
    category: "Lit enfant",
    description: "Le lit extensible MINNEN est parfait pour votre enfant en croissance. Sa longueur ajustable et sa construction solide offrent un espace de sommeil sûr et confortable pendant des années.",
    price: 220
  },
  "childrens_bed_5" => {
    name: "VITVAL",
    room_type: "Chambre enfants",
    category: "Lit enfant",
    description: "Le lit mezzanine VITVAL offre une solution de sommeil innovante et amusante. Son design élégant et son échelle intégrée maximisent l'espace dans la chambre de votre enfant.",
    price: 300
  }
}


childrens_beds.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/7-1-#{index+1}-lit_enfant-chambres_enfant.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


childrens_desks = {
  "childrens_desk_1" => {
    name: "MICKE",
    room_type: "Chambre enfants",
    category: "Bureau enfant",
    description: "Le bureau MICKE est parfait pour les travaux scolaires ou les projets artistiques. Son design compact et ses options de rangement le rendent idéal pour les espaces plus petits, tout en offrant un espace de travail fonctionnel.",
    price: 70
  },
  "childrens_desk_2" => {
    name: "PÅHL",
    room_type: "Chambre enfants",
    category: "Bureau enfant",
    description: "Le bureau ajustable PÅHL grandit avec votre enfant, offrant un espace de travail confortable à toutes les étapes. Sa conception modulable et ses options de rangement aident à maintenir l'espace de travail organisé.",
    price: 100
  },
  "childrens_desk_3" => {
    name: "FLISAT",
    room_type: "Chambre enfants",
    category: "Bureau enfant",
    description: "Le bureau pour enfants FLISAT inspire la créativité avec sa table réglable. Sa construction en bois massif et ses options de rangement garantissent un espace de travail durable et organisé pour votre enfant.",
    price: 120
  },
  "childrens_desk_4" => {
    name: "SUNDVIK",
    room_type: "Chambre enfants",
    category: "Bureau enfant",
    description: "Le bureau SUNDVIK offre un espace de travail classique pour votre enfant. Sa construction robuste et ses tiroirs spacieux permettent un rangement fonctionnel et une durabilité à long terme.",
    price: 150
  },
  "childrens_desk_5" => {
    name: "HUSET",
    room_type: "Chambre enfants",
    category: "Bureau enfant",
    description: "Le bureau pour enfants HUSET est un espace de travail inspirant pour votre enfant. Avec sa construction durable et ses tiroirs de rangement, il encourage l'organisation et la créativité.",
    price: 90
  }
}


childrens_desks.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/7-2-#{index+1}-bureau_enfant-chambres_enfant.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

childrens_wardrobes = {
  "childrens_wardrobe_1" => {
    name: "STUVA",
    room_type: "Chambre enfants",
    category: "Armoire enfant",
    description: "L'armoire STUVA / FRITIDS offre une solution de rangement flexible et colorée. Sa conception modulaire et ses étagères ajustables s'adaptent aux besoins changeants de votre enfant tout au long de sa croissance.",
    price: 180
  },
  "childrens_wardrobe_2" => {
    name: "BUSUNGE",
    room_type: "Chambre enfants",
    category: "Armoire enfant",
    description: "L'armoire BUSUNGE est élégante et fonctionnelle. Sa construction robuste et son design attrayant avec des coins arrondis offrent un espace de rangement sûr et organisé pour les vêtements de votre enfant.",
    price: 220
  },
  "childrens_wardrobe_3" => {
    name: "SMÅSTAD",
    room_type: "Chambre enfants",
    category: "Armoire enfant",
    description: "L'armoire SMÅSTAD offre une combinaison de rangement flexible et de design ludique. Avec ses options d'organisation internes, elle aide à garder la chambre de votre enfant organisée et agréable.",
    price: 250
  },
  "childrens_wardrobe_4" => {
    name: "TROGEN",
    room_type: "Chambre enfants",
    category: "Armoire enfant",
    description: "L'armoire TROGEN offre un espace de rangement robuste et spacieux. Sa construction durable et son design intemporel assurent qu'elle reste utile et élégante à mesure que votre enfant grandit.",
    price: 280
  },
  "childrens_wardrobe_5" => {
    name: "SUNDVIK",
    room_type: "Chambre enfants",
    category: "Armoire enfant",
    description: "L'armoire SUNDVIK offre une solution de rangement classique pour la chambre de votre enfant. Sa construction robuste et son design traditionnel apportent une touche d'élégance à l'espace de votre enfant.",
    price: 300
  }
}



childrens_wardrobes.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/7-3-#{index+1}-armoire_enfant-chambres_enfant.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

adult_desks = {
  "adult_desk_1" => {
    name: "BEKANT",
    room_type: "Bureau",
    category: "Bureau adulte",
    description: "Le bureau BEKANT combine fonctionnalité et design moderne. Il offre un grand espace de travail tout en conservant une allure élégante et minimaliste, idéal pour votre bureau à la maison ou au travail.",
    price: 200
  },
  "adult_desk_2" => {
    name: "MICKE",
    room_type: "Bureau",
    category: "Bureau adulte",
    description: "Le bureau MICKE est compact mais fonctionnel. Son design épuré et ses options de rangement intégrées en font un choix parfait pour les petits espaces de travail ou les bureaux à domicile.",
    price: 120
  },
  "adult_desk_3" => {
    name: "MALM",
    room_type: "Bureau",
    category: "Bureau adulte",
    description: "Le bureau MALM offre une solution de travail sobre et élégante. Avec son tiroir intégré pour le rangement, ce bureau combine commodité et style pour créer un espace de travail confortable.",
    price: 180
  },
  "adult_desk_4" => {
    name: "HEMNES",
    room_type: "Bureau",
    category: "Bureau adulte",
    description: "Le bureau HEMNES combine un style traditionnel avec des fonctionnalités modernes. Il offre un espace de travail spacieux et des solutions de rangement pratiques pour un environnement de travail bien organisé.",
    price: 240
  },
  "adult_desk_5" => {
    name: "KULLABERG",
    room_type: "Bureau",
    category: "Bureau adulte",
    description: "Le bureau KULLABERG offre un design industriel robuste. Avec son large plateau en pin massif et son cadre en acier, ce bureau est à la fois durable et élégant.",
    price: 220
  }
}


adult_desks.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/8-1-#{index+1}-bureau_adulte-bureau.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

office_chairs = {
  "office_chair_1" => {
    name: "MARKUS",
    room_type: "Bureau",
    category: "Chaise de bureau",
    description: "La chaise de bureau MARKUS offre un confort suprême avec son dossier haut et son assise rembourrée. Avec ses fonctionnalités ergonomiques, elle est idéale pour les longues journées de travail.",
    price: 160
  },
  "office_chair_2" => {
    name: "RENBERGET",
    room_type: "Bureau",
    category: "Chaise de bureau",
    description: "La chaise de bureau RENBERGET est confortable et abordable. Son design ergonomique et son assise rembourrée fournissent un soutien adéquat pour travailler efficacement tout au long de la journée.",
    price: 80
  },
  "office_chair_3" => {
    name: "FLINTAN",
    room_type: "Bureau",
    category: "Chaise de bureau",
    description: "La chaise de bureau FLINTAN allie confort et fonctionnalité. Avec son soutien lombaire intégré et son assise rembourrée, cette chaise offre un confort optimal pour votre journée de travail.",
    price: 90
  },
  "office_chair_4" => {
    name: "LÅNGFJÄLL",
    room_type: "Bureau",
    category: "Chaise de bureau",
    description: "La chaise de bureau LÅNGFJÄLL est conçue pour le confort et le style. Avec ses lignes épurées et son design ergonomique, elle complète parfaitement tout espace de travail moderne.",
    price: 140
  },
  "office_chair_5" => {
    name: "JÄRVFJÄLLET",
    room_type: "Bureau",
    category: "Chaise de bureau",
    description: "La chaise de bureau JÄRVFJÄLLET offre un soutien supérieur avec son design ergonomique. Son assise ajustable et son dossier haut garantissent un confort optimal pour les longues journées de travail.",
    price: 200
  }
}



office_chairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/8-2-#{index+1}-chaise_de_bureau-bureau.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

shelves = {
  "shelf_1" => {
    name: "KALLAX",
    room_type: "Bureau",
    category: "Ètagère",
    description: "L'étagère KALLAX est versatile et adaptable à vos besoins. Avec ses compartiments carrés, elle est idéale pour ranger des livres, des fournitures de bureau ou pour afficher des objets décoratifs.",
    price: 70
  },
  "shelf_2" => {
    name: "BILLY",
    room_type: "Bureau",
    category: "Ètagère",
    description: "L'étagère BILLY est un classique de IKEA. Sa simplicité et sa fonctionnalité en font un choix parfait pour organiser vos livres et autres objets dans votre espace de travail.",
    price: 60
  },
  "shelf_3" => {
    name: "EKET",
    room_type: "Bureau",
    category: "Ètagère",
    description: "L'étagère EKET offre une solution de rangement modulaire. Avec ses multiples configurations, vous pouvez créer une solution de rangement qui convient parfaitement à votre espace de travail.",
    price: 80
  },
  "shelf_4" => {
    name: "BRUSALI",
    room_type: "Bureau",
    category: "Ètagère",
    description: "L'étagère BRUSALI est compacte et pratique. Son design épuré et ses étagères ajustables permettent un rangement efficace dans votre bureau, quel que soit l'espace disponible.",
    price: 100
  },
  "shelf_5" => {
    name: "HEMNES",
    room_type: "Bureau",
    category: "Ètagère",
    description: "L'étagère HEMNES offre une élégance traditionnelle à votre espace de travail. Avec sa construction en bois massif, elle offre une solution de rangement durable et attrayante pour votre bureau.",
    price: 150
  }
}


shelves.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/8-3-#{index+1}-etagere-bureau.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


shoe_cabinets = {
  "shoe_cabinet_1" => {
    name: "HEMNES",
    room_type: "Entrée",
    category: "Meuble-chaussures",
    description: "Le meuble à chaussures HEMNES ajoute une touche d'élégance à votre entrée. Avec sa capacité de rangement impressionnante, il aide à garder vos chaussures organisées et facilement accessibles.",
    price: 100
  },
  "shoe_cabinet_2" => {
    name: "BISSA",
    room_type: "Entrée",
    category: "Meuble-chaussures",
    description: "BISSA est un meuble à chaussures compact et fonctionnel. Il maximise l'utilisation de l'espace tout en gardant vos chaussures à l'abri de la poussière.",
    price: 50
  },
  "shoe_cabinet_3" => {
    name: "STÄLL",
    room_type: "Entrée",
    category: "Meuble-chaussures",
    description: "Le meuble à chaussures STÄLL offre une solution de rangement élégante. Son design moderne et sa capacité de rangement vous aident à garder votre entrée soignée et organisée.",
    price: 140
  },
  "shoe_cabinet_4" => {
    name: "TRONES",
    room_type: "Entrée",
    category: "Meuble-chaussures",
    description: "TRONES est un meuble à chaussures versatile qui peut aussi servir de rangement supplémentaire. Son design minimaliste se marie parfaitement avec tous les décors d'entrée.",
    price: 40
  },
  "shoe_cabinet_5" => {
    name: "BRUSALI",
    room_type: "Entrée",
    category: "Meuble-chaussures",
    description: "Le meuble à chaussures BRUSALI offre une grande capacité de rangement pour vos chaussures. Son design simple et classique en fait un ajout parfait à toute entrée.",
    price: 80
  }
}



shoe_cabinets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/9-1-#{index+1}-meuble_chaussure-entree.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


consoles = {
  "console_1" => {
    name: "LIATORP",
    room_type: "Entrée",
    category: "Console",
    description: "La console LIATORP offre une surface spacieuse pour afficher vos objets décoratifs. Son design romantique avec des détails délicats ajoute une touche d'élégance à votre entrée.",
    price: 180
  },
  "console_2" => {
    name: "HEMNES",
    room_type: "Entrée",
    category: "Console",
    description: "La console HEMNES ajoute une fonctionnalité et un style traditionnel à votre entrée. Avec ses tiroirs et sa surface d'exposition, elle offre un espace de rangement pratique tout en améliorant l'attrait visuel de votre espace.",
    price: 150
  },
  "console_3" => {
    name: "LACK",
    room_type: "Entrée",
    category: "Console",
    description: "La console LACK est un ajout simple et élégant à votre entrée. Sa conception épurée et minimaliste offre un espace de rangement supplémentaire sans encombrer l'espace.",
    price: 55
  },
  "console_4" => {
    name: "MALM",
    room_type: "Entrée",
    category: "Console",
    description: "La console MALM offre une solution de rangement élégante et moderne pour votre entrée. Avec ses tiroirs glissants et sa surface lisse, elle sert à la fois d'espace d'exposition et de rangement.",
    price: 120
  },
  "console_5" => {
    name: "BRUSALI",
    room_type: "Entrée",
    category: "Console",
    description: "La console BRUSALI est une addition pratique et attrayante à votre entrée. Son design épuré et sa finition neutre en font une pièce versatile pour tous les styles d'intérieur.",
    price: 100
  }
}



consoles.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/9-2-#{index+1}-console-entree.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


mirrors = {
  "mirror_1" => {
    name: "NISSEDAL",
    room_type: "Entrée",
    category: "Miroir",
    description: "Le miroir NISSEDAL offre une présence élégante dans votre entrée. Son cadre noir chic ajoute une touche d'élégance, tandis que le miroir reflète la lumière, rendant l'espace plus lumineux.",
    price: 50
  },
  "mirror_2" => {
    name: "HEMNES",
    room_type: "Entrée",
    category: "Miroir",
    description: "Le miroir HEMNES avec son cadre en bois blanc ajoute une sensation de légèreté et d'espace à votre entrée. Parfait pour une dernière vérification avant de quitter la maison.",
    price: 80
  },
  "mirror_3" => {
    name: "KARMSUND",
    room_type: "Entrée",
    category: "Miroir",
    description: "Le miroir KARMSUND offre une fonctionnalité supérieure avec son design inclinable. Son cadre noir ajoute une touche de sophistication à votre entrée.",
    price: 40
  },
  "mirror_4" => {
    name: "STAVE",
    room_type: "Entrée",
    category: "Miroir",
    description: "Le miroir STAVE offre un design simple et épuré. Il s'intègre parfaitement à tout style de décoration d'entrée et ajoute une sensation d'espace.",
    price: 30
  },
  "mirror_5" => {
    name: "IKORNNES",
    room_type: "Entrée",
    category: "Miroir",
    description: "Le miroir IKORNNES, avec son cadre en bois de frêne, ajoute une touche naturelle à votre entrée. Sa conception permet de le suspendre à une porte ou sur un mur, offrant une flexibilité d'installation.",
    price: 70
  }
}

mirrors.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("https://res.cloudinary.com/dwwqcadjv/image/upload/v1686045027/Seed/9-3-#{index+1}-miroir-entree.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end
