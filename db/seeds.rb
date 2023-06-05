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
