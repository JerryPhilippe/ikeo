require "open-uri"

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
  file = URI.open("app/assets/images/items/1-1-#{index+1}-table_de_jardin-jardin.jpg")
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
  file = URI.open("app/assets/images/items/1-2-#{index+1}-chaise_de_jardin-jardin.jpg")
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
  file = URI.open("app/assets/images/items/1-3-#{index+1}-fauteuil_de_jardin-jardin.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end



coffee_tables = {
  "coffee_table_1" => {
    name: "LACK",
    room_type: "Salon",
    category: "Table basse",
    description: "La table basse LACK incarne la simplicité scandinave. Idéale pour un salon, elle offre un espace fonctionnel pour les collations, les livres et les décorations.",
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
  file = URI.open("app/assets/images/items/2-1-#{index+1}-table-basse-salon.jpg")
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
    name: "LANDSKRONA",
    room_type: "Salon",
    category: "Canapé",
    description: "Le canapé LANDSKRONA est un choix élégant pour tout salon. Il offre un confort exceptionnel avec une allure qui séduira tous les amateurs de design.",
    price: 600
  }
}


sofas.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("app/assets/images/items/2-2-#{index+1}-canapé-salon.jpg")
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
    name: "LANDSKRONA",
    room_type: "Salon",
    category: "Fauteuil",
    description: "Le fauteuil LANDSKRONA apporte une élégance intemporelle à votre espace de vie. Confortable et sophistiqué, il est parfait pour les moments de détente.",
    price: 300
  }
}

armchairs.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("app/assets/images/items/2-3-#{index+1}-fauteuil-salon.jpg")
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
  file = URI.open("app/assets/images/items/3-1-#{index+1}-table-salle_à_manger.jpg")
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
  file = URI.open("app/assets/images/items/3-2-#{index+1}-chaise-salle_à_manger.jpg")
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
  file = URI.open("app/assets/images/items/3-3-#{index+1}-buffet-salle_à_manger.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


upper_cabinets = {
  "upper_cabinet_1" => {
    name: "SEKTION",
    room_type: "Cuisine",
    category: "Meuble haut",
    description: "Le meuble haut SEKTION est parfait pour optimiser l'espace vertical de votre cuisine. Son design fonctionnel permet de ranger facilement la vaisselle et les ustensiles.",
    price: 80
  },
  "upper_cabinet_2" => {
    name: "METOD",
    room_type: "Cuisine",
    category: "Meuble haut",
    description: "METOD est un meuble haut qui offre une grande capacité de rangement. Sa structure durable garantit une utilisation de longue durée.",
    price: 90
  },
  "upper_cabinet_3" => {
    name: "KUNGSBACKA",
    room_type: "Cuisine",
    category: "Meuble haut",
    description: "Le meuble haut KUNGSBACKA, avec son design moderne et épuré, donne une allure contemporaine à votre cuisine tout en offrant un espace de rangement pratique.",
    price: 120
  },
  "upper_cabinet_4" => {
    name: "VEDDINGE",
    room_type: "Cuisine",
    category: "Meuble haut",
    description: "Le meuble haut VEDDINGE offre une solution de rangement élégante pour votre cuisine. Son design minimaliste s'intègre parfaitement dans les cuisines modernes.",
    price: 100
  },
  "upper_cabinet_5" => {
    name: "TORHAMN",
    room_type: "Cuisine",
    category: "Meuble haut",
    description: "TORHAMN est un meuble haut offrant un espace de rangement ample. Son design naturel ajoute une touche de chaleur à votre cuisine.",
    price: 110
  }
}

upper_cabinets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("app/assets/images/items/4-1-#{index+1}-meubles_haut-cuisine.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

lower_cabinets = {
  "lower_cabinet_1" => {
    name: "SEKTION",
    room_type: "Cuisine",
    category: "Meuble bas",
    description: "SEKTION est un meuble bas qui offre un espace de rangement ample pour votre cuisine. Son design fonctionnel permet de garder vos ustensiles de cuisine organisés.",
    price: 100
  },
  "lower_cabinet_2" => {
    name: "METOD",
    room_type: "Cuisine",
    category: "Meuble bas",
    description: "Le meuble bas METOD offre un grand espace de rangement pour votre vaisselle et vos ustensiles. Sa durabilité et son design pratique en font un choix idéal pour toute cuisine.",
    price: 120
  },
  "lower_cabinet_3" => {
    name: "KUNGSBACKA",
    room_type: "Cuisine",
    category: "Meuble bas",
    description: "KUNGSBACKA est un meuble bas au design épuré et contemporain. Sa structure solide et son espace de rangement pratique en font un ajout parfait à votre cuisine.",
    price: 150
  },
  "lower_cabinet_4" => {
    name: "VEDDINGE",
    room_type: "Cuisine",
    category: "Meuble bas",
    description: "Le meuble bas VEDDINGE est à la fois fonctionnel et esthétiquement plaisant. Son design minimaliste ajoutera une touche de modernité à votre cuisine.",
    price: 140
  },
  "lower_cabinet_5" => {
    name: "TORHAMN",
    room_type: "Cuisine",
    category: "Meuble bas",
    description: "TORHAMN est un meuble bas avec un design chaleureux et naturel. Il offre un espace de rangement généreux pour garder votre cuisine organisée.",
    price: 130
  }
}


lower_cabinets.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("app/assets/images/items/4-2-#{index+1}-meubles_bas-cuisine.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


kitchen_wardrobes = {
  "kitchen_wardrobe_1" => {
    name: "PAX",
    room_type: "Cuisine",
    category: "Armoire de cuisine",
    description: "PAX est une armoire de cuisine polyvalente offrant une grande capacité de rangement. Son design modulable vous permet de personnaliser l'espace selon vos besoins.",
    price: 250
  },
  "kitchen_wardrobe_2" => {
    name: "GODMORGON",
    room_type: "Cuisine",
    category: "Armoire de cuisine",
    description: "L'armoire de cuisine GODMORGON offre un espace de rangement généreux pour tous vos ustensiles de cuisine. Son design élégant et sa construction durable en font un excellent choix.",
    price: 300
  },
  "kitchen_wardrobe_3" => {
    name: "IVAR",
    room_type: "Cuisine",
    category: "Armoire de cuisine",
    description: "IVAR est une armoire de cuisine robuste et polyvalente, parfaite pour garder vos ustensiles de cuisine et autres essentiels bien organisés et à portée de main.",
    price: 200
  },
  "kitchen_wardrobe_4" => {
    name: "BRIMNES",
    room_type: "Cuisine",
    category: "Armoire de cuisine",
    description: "L'armoire de cuisine BRIMNES offre un espace de rangement spacieux pour vos ustensiles de cuisine. Son design simple s'adapte à tous les styles de cuisine.",
    price: 220
  },
  "kitchen_wardrobe_5" => {
    name: "BESTÅ",
    room_type: "Cuisine",
    category: "Armoire de cuisine",
    description: "L'armoire de cuisine BESTÅ offre une solution de rangement modulable pour votre cuisine. Son design épuré et contemporain s'intègre parfaitement dans n'importe quel espace.",
    price: 260
  }
}

kitchen_wardrobes.each_with_index do |(_key, value), index|
  item = Item.create(name: value[:name].to_s, description: value[:description].to_s, price: value[:price].to_i, room_type: value[:room_type].to_s, category: value[:category].to_s)
  file = URI.open("app/assets/images/items/4-3-#{index+1}-armoire_de_cuisine-cuisine.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end


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
  file = URI.open("app/assets/images/items/5-1-#{index+1}-lit-chambre.jpg")
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
  file = URI.open("app/assets/images/items/5-2-#{index+1}-armoire-chambre.jpg")
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
  file = URI.open("app/assets/images/items/5-3-#{index+1}-chevet-chambre.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end

vanities = {
  "vanity_1" => {
    name: "HEMNES / ODENSVIK",
    room_type: "Salle de bain",
    category: "Meuble-vasque",
    description: "Le meuble-vasque HEMNES / ODENSVIK allie style classique et fonctionnalité. Avec son grand tiroir pour le rangement et sa vasque durable, il transforme votre salle de bain en un espace élégant et organisé.",
    price: 250
  },
  "vanity_2" => {
    name: "GODMORGON / BRÅVIKEN",
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
  file = URI.open("app/assets/images/items/6-1-#{index+1}-meuble_vasque-salle_de_bain.jpg")
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
    name: "FULLÄN",
    room_type: "Salle de bain",
    category: "Meuble-miroir",
    description: "Le meuble-miroir FULLÄN est un choix simple et élégant pour votre salle de bain. Son miroir intégré et ses étagères offrent un rangement fonctionnel pour tous vos essentiels de salle de bain.",
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
  file = URI.open("app/assets/images/items/6-2-#{index+1}-meuble_miroir-salle_de_bain.jpg")
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
  file = URI.open("app/assets/images/items/6-3-#{index+1}-armoire_de_salle_de_bain-salle_de_bain.jpg")
  item.photo.attach(io: file, filename: "#{index + 1}.jpg", content_type: "image/jpg")
end
