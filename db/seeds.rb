puts "Rachel and Ross have a baby!"
User.create!(username: "greeny", first_name: "emma", last_name: "green", email: "emma@green.com", password: "iamgreen")
puts "Emma was born!"

puts ""

puts "Rendering Geller's Flat"
Environment.create!(name: "The Geller's New York Flat")
puts "Welcome Ross, Rachel and Emma"

puts ""

puts "Planting seeds"

plants_attributes = [{
  name:               "Strawberry",
  latin_name:         "Fragaria",
  category:           "Fruit Tree",
  max_height:         "20cm",
  care_level:         "Facile",
  light_preference:   "sunny",
  description:        "This amazing strawberry species 'Gigantella Maxim' (Fragaria x ananassa) is a medium-early variety with colossal fruits. One strawberry can weigh more than 100 grams.",
  plant_image:        "https://assets.bakker.com/ProductPics/560x676/11554-01-BAKIE_20120504143200.jpg"
},
{
  name:               "Blueberries",
  latin_name:         "Fuglalao",
  category:           "Fruit Tree",
  max_height:         "10cm",
  care_level:         "Facile",
  light_preference:   "Shadow",
  description:        "Are also called 'Queen of berries' in the garden and kitchen. The self-pollinating blueberries bloom with white-pink flowers in April-May and have ripe and healthy berries in July-August.",
  plant_image:        "https://assets.bakker.com/ProductPics/560x676/13052-03-BAKI_20190426143348.jpg"
}]

puts "growing plants"
Plant.create!(plants_attributes)
puts "your #{Plant.count} plants are fully grown"
