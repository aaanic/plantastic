puts "Rendering Geller's Flat"
ny_flat = Environment.create!(name: "The Geller's New York Flat")
puts "Welcome Ross, Rachel and Emma"

puts "Rachel and Ross have a baby..."
User.create!(username: "greeny", first_name: "emma", last_name: "green", email: "emma@green.com", password: "iamgreen", environment: ny_flat)
puts "Emma was born!"

puts "Planting seeds"

plants_attributes = [
  # {:name=>"Areca Palm - Plant\n", :category=>"Air-purifying Plants", :description=>"A graceful palm tree in the house which purifies your air too? The Areca palm is the one for you! This ornate Gold palm comes from the tropics and does require some light and moisture. But for that, it gives you tropical air in return. The Dypsis Lutescens is one of the best air-purifying plants. Furniture often exudes contaminated substances. The imposing foliage of the Areca captures the contaminated particles and converts them into oxygen. Itâ\u0080\u0099s a pleasure!", :latin_name=>"Dypsis lutescens ", :light_preference=>"full sun\n, \npartial sun", :max_height=>"65 - 120 cm", :specifics=>"If you take good care of the Areca Palm, the plant will take good care of you too! With its large leaves, it converts contaminated substances in your home into oxygen. Solvents in your furniture are released into the air. Too high a concentration of such gases can cause headaches, for example. The Areca Palm reduces the risk of Sick Building Syndrome.Â ", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/81963-01-BAKIE_20190510134357.jpg"},
  {:name=>"Ivy 'Wonder'", :category=>"Green House Plants", :description=>"The beautiful, fast growing ivy (Hedera) - for all around the home, be it hall, bedroom or bathroom. Hedera will also thrive in the garden or on the patio! This strong plant with its decoratively marked leaves is easy to grow. As it both hangs and climbs it is just fun to have around!\n\nIvy also helps purify the surrounding air!\nThis plant will trap significant levels of potentially damaging gas particles in your home's atmosphere and will give you oxygen in return (read more about this below!) It also helps to humidify your room so your indoor climate will be improved just by having this plant! We deal in products from Air so Pure who have developed a lovely selection of just such plants for helping to purify the atmosphere in homes, schools and offices. Treat yourself to the purified and humidified atmosphere offered by this wonderful plant.", :latin_name=>"Hedera helix 'Wonder'", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"", :specifics=>"Ivy (Hedera helix) comes from the temperate climes of Europe. It grows in woods and forests climbing through the trees but is just as happy creeping along the ground. \n\nHedera is self climber, the stems have small suction cups at regular intervals along the stems which helps them to attach onto any surface, they are not feeders.\n\nIndoors, Hedera is often grown as a hanging plant too - which is not a problem for this plant and it will look very decorative.\n\nNew research has classified Hedera into the ivy family (Araliaceae).The harmful gas particles in the house, such as benzene, formaldehyde and trichloroethylene are solvents and are often used in the production of chipboard and other wood household items such as kitchen cabinets and other pieces of furniture - or perhaps even as cleaning agents. These items of furniture often need time to disperse the gases contained in them and are often still dispersing when they already been placed in our homes and offices. This can often lead to a bad atmosphere that can cause headaches either in the home or at the office and the phenomenon is known as 'Sick Building Syndrome'.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/71916-00-BAKIE_20190510104144.jpg"},
  {:name=>"Aloe Vera", :category=>"Succulents", :description=>"Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works. Add this lovely house plant to your order right now!", :latin_name=>"Aloe vera ", :light_preference=>"full sun\n, \npartial sun", :max_height=>"30 - 40 cm", :specifics=>"Aloe vera is a succulent plant that stores a lot of fluid in the leaves, because of this water supply the plant is drought tolerant. The leaves are grey-green and a little prickly. The sap from the leaves of this tropical succulent has medicinal properties and has been used for centuries as a home remedy. It is one of the oldest known medicinal plants. The sap soothes grazes, insect bites and sunburn. It is also used in many skin creams and other cosmetic products. Sometimes red or yellow flowers appear from the heart of the rosette.", :remote_image_url=>"https://i.imgur.com/c341tda.jpg"},
  # {:name=>"Spathiphyllum", :category=>"Small indoor plants", :description=>"The attractive flowers of the peace lily (Spathiphyllum wallisii) are white. This low-maintenance indoor plant is often compared to the arum lily, to which it bears a strong resemblance. The South American Spathiphyllum has powerful air-purifying properties, so it brings clean, fresh air into your home. Place the plant in half shade, so you can enjoy it for years.", :latin_name=>"Spathiphyllum wallisii 'Pearl Cupido'", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"15 - 50 cm", :specifics=>"Spathiphyllum wallisii is a member of the Araceae family. The white spoon shaped â\u0080\u0098flowersâ\u0080\u0099 of Spathiphyllum wallisii are really bracts known as spathes. When the pale green spathe opens it turns white. This is when the true flowers can be seen on the creamy coloured spike which is called the spadix. Even when the plant is not in bloom the fresh green pointed leaves make a really attractive foliage plant. The plant will flower for 4-10 weeks followed by a short dormant period necessary for developing new buds.Various poisonous organic gas particles and solvents are used in the production of chipboard and other parts used in household items such as kitchen cabinets and other items of furniture - or perhaps even as cleaning agents. These items of furniture often need time to disperse the gases contained in them but are often still dispersing when already placed in our homes and offices. This can lead to an actual bad atmosphere that can lead to headaches either in the home or at the office and the phenomenon is known as 'Sick Building Syndrome'.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/41992-01-BAKIE_20190510093847.jpg"},
  {:name=>"Hawaiian Palm ", :category=>"Flowering House Plants", :description=>"The Hawaiian palm (Brighamia insignis) is a very unusual and decorative house plant. New leaves form in the crown and the older, lowermost leaves turn yellow and wither. In its natural habitat in Hawaii very few of these exceptional and decorative plants remain, so a survival plan has been put in place. This plant can however be grown professionally and while they are no longer taken from the wild, growers cultivate them well. Supplied in a nursery pot.Â ", :latin_name=>"Brighamia insignis ", :light_preference=>"full sun\n, \npartial sun", :max_height=>"35 - 50 cm", :specifics=>"Brighamia insignis is a very unique succulent from Hawaii. In Hawaii, it is called a vulcan palm or 'cabbage on a stick' and is a very rare and protected plant. There's a rescue plan in place now. It is however easily cultivated by professional growers and now readily available. They are no longer removed from the wild, but personally grown.\nThis plant's trunk is like a reservoir so the plant is very drought tolerant. Remove the leaves at the bottom as they turn yellow - this is normal and new leaves will continually appear. As the plant leave are shed, 'scars' appear making it resemble the trunk of a palm tree. In the winter months, light yellow flowers may appear.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/93847-05-BAKIE_20181108151649.jpg"},
  {:name=>"Monstera 'Monkey Leaf'", :category=>"Small indoor plants", :description=>"A tropical climbing or hanging plant for a warm room in your home. The window-leaf monstera (Monstera obliqua) is a striking indoor plant that is easy to care for. Put the window-leaf monstera in a bright location, but not in full afternoon sun. The moister and warmer the air, the larger the leaves will grow.", :latin_name=>"Monstera obliqua 'Monkey Leaf'", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"50 - 100 cm", :specifics=>"Monstera obliqua is classified under the Aragonese family (Araceae). Where it grows wild, in the tropical rain forests of South and Central America, this plant climbs high into the giant jungle trees and has leaves that are one metre long! However in our homes, under perfect conditions the leaves will be about 30-50 cm.\nThe leaves are lovely and grow bigger in good conditions. The holes on the large leaves give a decorative look to the plant. In perfect growing conditions, this plant may flower with green and white arum lily like flowers/bracts. These are however pretty inconspicuous and grow on a spike, in the middle of the bract.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/77674-02-BAKI_20190430123302.jpg"},
  # {:name=>"Kentia Palm XL", :category=>"Top 10 Indoor Plants", :description=>"The striking kentia palm tree (Howea forsteriana) has lovely leaves that remind us all of... a tropical palm tree! This palm loves the shade and will bring a touch of the tropics to your living room. A sturdy palm, it is also very decorative and easily cared for. This shade loving tree will grow tall anywhere indoors but is especially suitable for offices. Stand it prominently to enjoy it to the full!", :latin_name=>"Howea forsteriana XL", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"50 - 160 cm", :specifics=>"The kentia palm tree (Howea forsteriana) is one of the Arecaceae and is also known as the thatch palm tree.Originating on Lord Howe Island, off the coast of Australia it is still not found anywhere else in the wild. In tropical climes it is used as outdoor dÃ©cor but in temperate climes as a houseplant.The harmful gas particles in the home, such as benzene, formaldehyde and trichloroethylene are solvents and are often used in chipboard and other wood products. These are often used for cabinets and other furniture, or as a degreasing agent for metal objects. These products often need some time to evaporate these gases, but they are often still doing that when they end up in the living room. This can create an environment in the home or office in which some people develop headaches. This environment is also referred to as \"Sick Building Syndrome\".", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/44388-01-BAKIE_20190510154617.jpg"},
  {:name=>"Pineapple Plant", :category=>"Flowering House Plants", :description=>"This popular pineapple plant (Ananas comosus) 'Corona' comes with a cute little pineapple that really makes a decorative house plant! Gives off the delightful scent of pineapple. Actually tastes like a pineapple but this plant is not grown with consumption in mind. Pineapple plant (Ananas comosus) 'Corona' has large exotic leaves approx. 30 cm long. Both plant and fruits on Ananus comusus are much smaller than regular edible pineapple plants. This plant emits oxygen during the night and helps prevent snoring as the scent of pineapple contains and anti-inflammatory enzyme (bromylaine) that helps to expand your airways. Try keeping your Ananas comosus 'Corona' in the bedroom if either you (or a partner) suffer from snoring.", :latin_name=>"Ananas comosus ", :light_preference=>"full sun, partial sun", :max_height=>"50 - 60 cm", :specifics=>"A bromeliad will always be noticed in your home. A large inflorescence appears from the heart of a rosette of leaves. The leaves form a narrow tube. A bromeliad will only flower once but the flowers will remain on the plant for three to six months. When flowering is over, the bromeliad will form new shoots that, in ideal conditions, can flower once more. Once the shoots are big enough, the original mother plant will die back. A pineapple plant is classified under Bromeliaceae a very extensive family of tropical plants with many different varieties in all shapes and sizes. Many of these are epiphytes which means they grow on tree branches. Ananas comusus (the plant for edible pineapples) is also classified as a bromeliad.", :remote_image_url=>"https://i.imgur.com/Zn5QKJl.jpg"},
  # {:name=>"Spider Plant 'Atlantic'", :category=>"Small indoor plants", :description=>"The cute and easily grown spider plant (Chlorophytum comosum â\u0080\u0098Atlanticâ\u0080\u0099) will thrive just about anywhere. Place it in a nice light spot and keep the soil moist â\u0080\u0093 it will never disappoint you. This cheerful little plant with variegated foliage is fun to have around and this particular African beauty by Air so PureÂ® (Chlorophytum comosum â\u0080\u0098Atlanticâ\u0080\u0099) will eventually grow into a hanging plant as it develops new shoots that hang softly over. So nice to see!\nSpider plants are great air-purifying plants!\nThe foliage on these plants captures a significant amount of harmful gases that accumulate in our homes â\u0080\u0093 and then give us oxygen in return! (See under â\u0080\u0098more informationâ\u0080\u0099). Our homeâ\u0080\u0099s microclimate is definitely improved when you keep these plants. Bakker supplies plants from Air so PureÂ® - a company with a fabulous selection of air-purifying plants for use in homes, schools and offices.", :latin_name=>"Chlorophytum comosum 'Atlantic'", :light_preference=>"partial sun", :max_height=>"25 - 40 cm", :specifics=>"The spider plant (Chlorophytum comosum) is a (sub) tropical plant from the Savannahs of South Africa where it appears as soon as it gets damp. All the leaf above ground dies off in the dry season and the plant survives by forming a tuber. One shower of rain is enough to get the leaves appearing above ground again. There is no necessity for the plant to go underground - a dry season need not occur - so watering it all year round is not a problem.\n\nNew studies have classified the Chlorophytum as Asparagaceae.This is a plant that can look fantastic in hanging baskets or pots.Research has shown that the spider plant has definite air purifying qualities.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/71466-01-BAKIE_20190510104153.jpg"},
  # {:name=>"Ivy 'Jessica'", :category=>"Green House Plants", :description=>"A pretty ivy with unusually decorative leaves which are very unusual in that the white veins are very noticeable. This ivy (Hedera) is also very fast growing indoors, wherever you hang it. It will also thrive outdoors in garden or patio! A strong plant with marked green leaves, easy to care for. Hanging or climbing, it's a frivolous addition anywhere you see it.\nThis type of climber is air purifying too! There are significant quantities of harmful gases in our homes (check under special comments) which are captured by the leaves of this plant - they then return it all as oxygen! Indoor environments are improved for everyone that uses these plants. Treat yourself to the pure, humidified air given off by this lovely plant.\nÂ \nÂ ", :latin_name=>"Hedera helix 'Jessica'", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"", :specifics=>"Ivy (Hedera helix) comes from the temperate climes of Europe. It grows in woods and forests climbing through the trees but is just as happy creeping along the ground. \n\nHedera is self climber, the stems have small suction cups at regular intervals along the stems which helps them to attach onto any surface, they are not feeders.\n\nIndoors, Hedera is often grown as a hanging plant too - which is not a problem for this plant and it will look very decorative.\n\nNew research has classified Hedera into the ivy family (Araliaceae).The harmful gas particles in the house, such as benzene, formaldehyde and trichloroethylene are solvents and are often used in the production of chipboard and other wood household items such as kitchen cabinets and other pieces of furniture - or perhaps even as cleaning agents. These items of furniture often need time to disperse the gases contained in them and are often still dispersing when they already been placed in our homes and offices. This can often lead to a bad atmosphere that can cause headaches either in the home or at the office and the phenomenon is known as 'Sick Building Syndrome'.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/71915-00-BAKIE_20190510104207.jpg"},
  # {:name=>"Bi-colored Ivy", :category=>"Green House Plants", :description=>"The robust, rapidly growing ivy (Hedera helix â\u0080\u0098Evaâ\u0080\u0099) has white and green variegated leaves and makes a wonderful addition to your living room, hallway, bedroom or bathroom. This air-purifying plant with patterned, green leaves is easy to care for. The Hedera always appears to be hanging or climbing, which adds a playful, whimsical element to your home! The ivy also makes an excellent plant for your garden or patio.", :latin_name=>"Hedera helix ", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"", :specifics=>"The ivy (Hedera helix) can be found in Europe in regions with a moderate climate. It grows in forests and the edges of a wood and climbs trees, but can just as easily grow along the ground.\nThis plant is self-adhesive, that is to say that the adhesive pads that the ivy makes clings easily to their substrate. They work like suction pads. Ivy does not assimilate nutrients from its substrate on which the adhesive roots grow, it merely seeks support.\nThis climber is often used indoors as a hanging plant, which is not a problem.\nRecent research has classified Hedera in an ivy family (Araliaceae).The harmful gas particles in the house, such as benzene, formaldehyde and trichloroethylene are solvents and are often used in the production of chipboard and other wood household items such as kitchen cabinets and other pieces of furniture - or perhaps even as cleaning agents. These items of furniture often need time to disperse the gases contained in them and are often still dispersing when they already been placed in our homes and offices. This can often lead to a bad atmosphere that can cause headaches either in the home or at the office and the phenomenon is known as 'Sick Building Syndrome'.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/71913-01-BAKIE_20190510104207.jpg"},
  # {:name=>"Ivy 'Pittsburgh'", :category=>"Green House Plants", :description=>"Sturdy, fast-growing ivy (Hedera helix) 'Pittsburgh), for anywhere in the home - hall, living room and bathroom. Will also thrive in your garden or on the patio/decking! This is a sturdy plant with variegated, green foliage and easily grown. As it both hangs and climbs, green ivy (Hedera helix) 'Pittsburgh) comes over as very playful and versatile - really nice to have round! Ivy will also purify the surrounding air!\nAll our homes and offices give off significant amounts of harmful gasses (see details for more info.) and these all are absorbed by this plant which gives us oxygen in return! Our homes and offices micro-climates are all improved when we use this and other similar plants. Bakker supplies plants by Air So Pure which has a fabulous array of air-purifying plants to choose from, specially developed for homes, schools and offices. Treat yourself to the purified and humidified air that you get from this particular, lovely plant.", :latin_name=>"Hedera helix 'Pittsburgh'", :light_preference=>"partial sun\n, \nfull shade", :max_height=>"", :specifics=>"Ivy (Hedera helix) comes from the temperate climes of Europe. It grows in woods and forests climbing through the trees but is just as happy creeping along the ground. \n\nHedera is self climber, the stems have small suction cups at regular intervals along the stems which helps them to attach onto any surface, they are not feeders.\n\nIndoors, Hedera is often grown as a hanging plant too - which is not a problem for this plant and it will look very decorative.\n\nNew research has classified Hedera into the ivy family (Araliaceae).The harmful gas particles in the house, such as benzene, formaldehyde and trichloroethylene are solvents and are often used in the production of chipboard and other wood household items such as kitchen cabinets and other pieces of furniture - or perhaps even as cleaning agents. These items of furniture often need time to disperse the gases contained in them and are often still dispersing when they already been placed in our homes and offices. This can often lead to a bad atmosphere that can cause headaches either in the home or at the office and the phenomenon is known as 'Sick Building Syndrome'.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/71912-00-BAKIE_20190510104055.jpg"},
  # {:name=>"Phalaenopsis 'Rio Grande'", :category=>"Orchids", :description=>"A deep purple Phalaenopsis 'Rio Grande' (moth orchid) with a paler edging to the petals. This ebullient orchid makes things so festive in your home. Lovely on a large table or sideboard. Consider ordering several moth orchids (Phalaenopsis) 'Rio Grande' to create an even bigger show in your home.\nYou will receive a plant in a nursery pot with 2 fully grown flower stems already in bud.", :latin_name=>"Phalaenopsis amabilis 'Rio Grande'", :light_preference=>"full sun\n, \npartial sun", :max_height=>"60 - 75 cm", :specifics=>"This botanical Phalaenopsis is a native of the tropical regions of South East Asia where it grown on trees (epiphytic) and rocks, so always in the sun. The plant grows on aerial roots that provide it with sufficient nutrients - these are of course now in the pot so do allow the potting medium to dry out between waterings. Phalaenopsis is from the ancient Greek and literally translated mean: like a butterfly. Quite fitting really.Phalaenopsis one of the orchid family and the orchid family (Orchidaceae) is a very exciting family to belong to. Orchids often try to resemble certain female insects in order to attract male insects of that particular type and have them mate on their flowers. This false mating is simply used as a way to distribute the pollen on the stamens, and this then forms seed. This imitating of female insects can go really far as not just the shape of the flower but even the production of certain pheromones (a fast dissipating scent that can influence sexual behaviours) is used by the flowers to attract the males.", :remote_image_url=>"https://assets.bakker.com/ProductPics/560x676/41243-01-BAKIE_20190510090715.jpg"}
  {:name=>"Philodendron scandens", :category=>"Green House Plants", :description=>"A tropical, leafy house plant with heart-shaped leaves! Philodendron scandens has a creeping habit that can also climb. This is a plant that just looks so peaceful and radiates tranquility is great for a healthy environment! Philodendron scandens will thrive in a nice light spot out of the midday sun - a shady spot won't be problematic for this plant. Order this new asset for your home here.", :latin_name=>"Philodendron scandens ", :light_preference=>"not scented", :max_height=>"", :specifics=>"", :remote_image_url=>"https://i.imgur.com/vWsXXVF.jpg"},
  {:name=>"Zanzibar Gem", :category=>"Office plants", :description=>"A perfect houseplant - Zamioculcas zamiifolia is both unusual and strong! The palm-like leaves are dark green and glossy so the plant easily tolerates drought. It can be left without any problems for 3 weeks while you go on holiday! Stand this indoor palm in a light spot, preferably out of full sun. A lovely houseplant, not really a palm tree but known as such!", :latin_name=>"Zamioculcas zamiifolia ", :light_preference=>"partial sun", :max_height=>"70 - 100 cm", :specifics=>"The Zanzibar Gem is an easily grown houseplant that can withstand dry air. The thick fleshy leaves, especially at the base store lots of moisture. This will be used as a reserve for when it gets too dry, similar to a succulent. \n\nZamioculcas zamiifolia is an ornamental houseplant, ideal for those difficult areas indoors, like a window-sill above the radiator. Zanzibar Gem can also be stood outdoors on the patio or decking in the summer but as soon as the temperature threatens to drop below 10Â° C, you must bring it indoors. This plant is seldom (if ever) plagued by pests!Although this plant resembles a succulent (Crassulaceae), it actually belongs to the arum family (one of the Araceae) and does not belong to the palm family (Arecaceae).", :remote_image_url=>"https://i.imgur.com/nb17TeI.jpg"},
  {:name=>"Calathea 'Compact Star'", :category=>"Green House Plants", :description=>"The decorative Calathea 'Compact Star' loves shady corners that most other indoor plants would find it too dark. Ironically, this plant sleeps in the evenings. All the leaves turn upwards at night. This eye-catching Calathea 'Compact Star' comes from the jungles of South America and Africa. It is easy to care for and has beautifully marked and shaped leaves. Calatheas also produce clean air!\nThe leaves of this plant absorb significant quantities of hazardous gas particles in your home (see Details) and provide oxygen in return! These plants create an indoor atmosphere that is better for everyone. Its air-purifying effects can be used in homes, schools and offices. Give yourself the gift of purified, humidified air with this beautiful plant.", :latin_name=>"Calathea  'Compact Star'", :light_preference=>"partial sun", :max_height=>"75 - 90 cm", :specifics=>"If you take good care of the Calathea, the plant will take good care of you too! With its large leaves, it converts contaminated substances in your home into oxygen. Solvents in your furniture are released into the air. Too high a concentration of such gases can cause headaches, for example. The Calathea reduces the risk of Sick Building Syndrome.Â ", :remote_image_url=>"https://i.imgur.com/eNiBMb1.jpg"},
  {:name=>"Bird’s Nest Fern", :category=>"Ferns", :description=>"A beautifully striking, leafy fern with strong, bright green tongue-shaped fronds! Very unusually shaped leaves, not like a typical fern! They are sturdier, wavy and stand more erect than the natural varieties. Bird's Nest Fern prefers shade more than sunlight. To enhance your Asplenium mnidus ‘Crispy Wave’ stand it in a prominent place in the living room! This easily grown plant can go outdoors to a shady spot in the summer too, but do not forget to bring it back indoors before the first frosts!", :latin_name=>"Asplenium nidus 'Crispy Wave''", :light_preference=>"partial sun", :max_height=>"50–60cm", :specifics=>"Asplenium nidus is a tropical variety of the tongue fern growing wild in Northwest Europe. This species originates from Japan and Taiwan where it even grows on tree branches and rocks in humid conditions (epiphytic).Asplenium is a member of the fern family of Aspleniaceae.", :remote_image_url=>"https://i.imgur.com/ytyWs4d.jpg"},
  {:name=>"Echeveria", :category=>"Small indoor plants", :description=>"'Perle von Nürnberg' might just be the prettiest Echeveria there is. The leaves of this Mexican succulent are purple and have a grey, powdery glow. This popular succulent grows easy, as all Echeverias do. Put the plant in a sunny spot and water every two to three weeks. Having trouble keeping your plants alive? Then the Echeveria is just the thing for you!", :latin_name=>"Echeveria 'Perle von Nürnberg'", :light_preference=>"full sun, partial sun", :max_height=>"", :specifics=>"", :remote_image_url=>"https://i.imgur.com/thmDTRy.jpg"},
  {:name=>"Chinese money plant", :category=>"Houseplants", :description=>"This hip, Chinese money plant is a popular species that you often see in Scandinavian interior design. The bright-green, pancake-shaped leaves of the Pilea peperomioides, the plant's official name, balance on the end of long, thin stems. It is not the most productive air-purifying plant, but cutting a Chinese money plant for shoots is incredibly easy. Want the air in your home to be a little fresher? Fill your room with Chinese money plant cuttings! Caring for this independent fellow is a piece of cake, too. Just water it once a week and you're set!", :latin_name=>"Pilea peperomioides ", :light_preference=>"partial sun, full shade", :max_height=>"10 - 40 cm", :specifics=>"This plant is sure to be noticed when you have one in your home. It originated in (sub-)tropical regions of America, Africa and Asia. Pilea is actually a member of the stinging nettle (Urticaceae) family and is a well-known plant for its unusually decorative foliage. The small leaved varieties will also thrive in a terrarium and look very beautiful.", :remote_image_url=>"https://i.imgur.com/IUBemjm.jpg"},
  {:name=>"Parlour Palm Tree", :category=>"Green House Plants", :description=>"This cute, miniature palm tree will bring a touch of the tropics to your home! Chamaedorea elegans originated in Central America but this Parlour Palm with is feathery foliage is a popular houseplant in more temperate climes. Intenz HomeÂ® supplies exclusive plants with a really trendy look. These are all plants that will set you apart. Give this palm a prominent spot in part shade, out of the hot midday sun. A very easily cared for little palm tree.", :latin_name=>"Chamaedorea elegans ", :light_preference=>"partial sun", :max_height=>"50 - 85 cm", :specifics=>"Chamaedorea elegans is classified under Arecaceae and it originated in the tropical rainforests of Central America. The bright green foliage is pretty and feathery.", :remote_image_url=>"https://i.imgur.com/3aqPgm6.jpg"},
  {:name=>"Peperomia Marble", :category=>"Green House Plants", :description=>"Peperomias are related to black peppercorns, and are in the family Piperaceae. Like other plants in the family, the flower stalk is cream colored, and the tiny flowers lack a perianth (petals or sepals). This peperomia is easily propagated via leaf-cuttings, and is able to regenerate after completely dying back to the stem. This plant is non-toxic, making it safe to keep around your furry friends! ", :latin_name=>"Peperomia", :light_preference=>"not scented", :max_height=>"20–25cm", :specifics=>"This peperomia creates quite a striking presence in the living room. The plant has ribbed leaves with alternating light and dark green sections on the leaves. It is a compact grower which originated from the jungles of Brazil. Peperomia is a tropical plant with many varieties and belongs in the family of Piperaceae - there are all varieties, sizes and colours! Many of these actually grow in trees. It is a known member of the white and also the black pepper family (Piper nigrum).", :remote_image_url=>"https://i.imgur.com/yN4uVJs.jpg"},
  {:name=>"Fiddle Leaf Fig Plant", :category=>"Office plants", :description=>"You will no doubt understand the nickname Violin plant. With its violin shaped leaves, the Ficus Lyrata is a feast for the eyes. The Ficus comes in many shapes and sizes. But you rarely see one as graceful as the Lyrata! It exudes its charm most of all in full sun. The Ficus comes from Southeast Asia and is therefore quite used to it. With this plant, you literally bring the sun into the house! To cap it all, the Violin plant also scrubs CO2 from the air and gives off oxygen in return.", :latin_name=>"Ficus", :light_preference=>"full sun, partial sun", :max_height=>"120 - 140 cm", :specifics=>"", :remote_image_url=>"https://i.imgur.com/nir2Lgi.jpg"},
  {:name=>"Snake Plant Laurentii", :category=>"Green House Plants", :description=>"This distinctive Sansevieria trifasciata var. laurentii, is the classic Mother-in-law's Tongue with long, sword-like, yellow edged leaves and it is extremely decorative and very robust. Very undemanding too, it will feel perfectly happy on a sunny window-sill and everyone is sure to remark upon it! Order this Sansevieria trifasciata var. laurentii today - a star item in any window!", :latin_name=>"Sansevieria trifasciata var. laurentii ", :light_preference=>"full sun, partial sun", :max_height=>"45 - 90 cm", :specifics=>"Succulents are very easy to keep as houseplants because they tolerate dry air very well. Their thick, fleshy leaves can hold a lot of moisture and act as a water reservoir during periods of drought. Mother-in-law's Tongue (Sansevieria trifasciata var. laurentii) is a striking plant, ideal for difficult spots, like a window-sill above a radiator. Sansevieria can be placed outside on the patio or decking during the summer months. As they are not frost tolerant, they need to be brought indoors when the temperature drops to temperatures below 10Â° C or when there are signs of frost.Sansevieria is named after an Italian scholar Raimondo di Sangro, Prince of Sanseviero (San Severo), born in Naples.\nAlthough of course very similar to a succulent, this plant actually belongs in the family of Asparagaceae and not the succulents (Crassulaceae).", :remote_image_url=>"https://i.imgur.com/ldmU2mk.jpg"},
  {:name=>"Money Tree", :category=>"Green House Plants", :description=>"If you are looking for an undemanding houseplant, Pachira aquatica is an ideal subject. The leathery, five to eight pointed leaves are really pretty and the unusual entwined stems are very eye-catching. Pachira aquatica is a native of Mexico and prefers a warm, light position. A little shade will be well tolerated by this sturdy houseplant and it requires very little maintenance.", :latin_name=>"Pachira aquatica", :light_preference=>"partial sun, full shade", :max_height=>"60 - 95 cm", :specifics=>"", :remote_image_url=>"https://i.imgur.com/lDUfbd3.jpg"},
  {:name=>"Bird of Paradise", :category=>"Large Indoor Plants", :description=>"The Strelitzia reginae is admired for its exotic flowers. The plant produces elegant flowers after about 2 to 3 years. It flowers in the summer and when it does, it steals the show. This tropical plant can be placed indoors, as well as outside. However, keep it somewhere bright, cool, and above freezing for the winter. The flower of the Strelizia is also called the bird of paradise.", :latin_name=>"Strelitzia 'Nicolai'", :light_preference=>"not scented", :max_height=>"60 - 70 cm", :specifics=>"The exotic Bird of Paradise flower comes from South Africa. The flowers are truly spectacular. There are blue-violet petals between its upright orange bracts and its large, grey-green leaves are very decorative. Did you know that the Bird of Paradise is part of the banana family?", :remote_image_url=>"https://i.imgur.com/NXQLLRo.jpg"},
  {:name=>"Hoya Heart", :category=>"Small indoor plants", :description=>"Hoya kerrii, or Hoya Hearts, are tropical succulent vines that are often cultivated and sold as leaf cuttings. They belong to the Dogbane family, Apocynaceae, which includes some notable plants such as Dogbane, Oleander, Plumeria, Periwinkle, Golden Trumpet, and Mandevilla.  Plants in Apocynaceae have latex sap, are usually fragrant, and are high in alkaloids (esp. Iridoids). The aromatic compounds produced by the flowers are prized as fragrances in perfumes, and the flowers are also cultivated as ornamentals in warmer climates. Hoya flowers are fragrant and waxy-looking, with the fragrance changing with the age of the flower.", :latin_name=>"Hoya kerrii", :light_preference=>"bright direct", :max_height=>"up to 4m", :specifics=>"", :remote_image_url=>"https://i.imgur.com/fOYQkxb.jpg"},
  {:name=>"Panda Plant", :category=>"Succulent", :description=>"Kalanchoe tomentosa, also known as Panda Plant, is a species of Kalanchoe that is extra fuzzy to aid in its succulent abilities. The fuzz acts as a sun blocker, to help dim the amount of sunlight that hits the plant. This helps it to cool down and prevent cellular damage from overexposure from the sun. The fuzz also blocks the wind from blowing against the plant directly, preventing water loss. Its hairs also help the plant blend into its environment to prevent death by herbivory (being eaten by animals!). The hairs make dark brown stripes which grow in an irregular pattern to further camouflage the plant from its herbivore predators.", :latin_name=>"Kalanchoe tomentosa", :light_preference=>"bright direct", :max_height=>"30–60cm", :specifics=>"", :remote_image_url=>"https://i.imgur.com/rP1Xk8K.jpg"},
  {:name=>"Haworthia Zebra", :category=>"Succulent", :description=>"Haworthia are hardy succulents that are so closely related to gasterias and aloes that they can cross breed with each other freely to form hybrids. With such a variable morphology and crossing habits, there is much debate to the placement of these plants within the family, Asphodelaceae (subfamily Alooideae). Due to so many naturally-occurring hybrids, identification and definition of any species is difficult. Some hybrids have accidentally been named as separate species, which adds to the confusion. Some scientists even think that they should all be separate species under one genus.", :latin_name=>"Haworthia", :light_preference=>"bright direct", :max_height=>"4–20cm", :specifics=>"", :remote_image_url=>"https://i.imgur.com/xfc4mnR.jpg"}
  ]
puts "Growing plants"
Plant.create!(plants_attributes)
puts "your #{Plant.count} plants are fully grown"

puts "Grabbing a pen and paper"
articles_attributes = [
  {title: "Top tips to care for your plant", text: "General guidelines
Your soil is like a sponge. If your soil is moist to begin with, hold off on watering for now. If water pours out through the drainage holes immediately, your soil is actually bone dry and the soil is repelling water, rather than soaking it in. Avoid pouring water onto bone dry soil. Water will only move through and around the edges of your planter and will not be absorbed by the roots. Your plant should absorb water slowly through its roots so, before you water again, check how dry the soil is. Use your fingers and feel if the soil is wet at least 2 inches below the surface. If so, you can add water.
", remote_image_url: "https://i.imgur.com/KFfRXaU.jpg"}, {title: "Help! Why are my plant's leaves turning yellow?", text: "The truth is, yellow leaves mean different things depending on (1) the plant they’re on and (2) what other symptoms the plant is showing. Overwatering, underwatering, mineral deficiency, temperature stress, and so on can all be causes. Below, we’ve broken it down to some simple symptomatic math with a solution to get rid of yellowing leaves.
", remote_image_url: "https://i.imgur.com/I7ayCAJ.jpg"}
]

puts "Writing articles"
Article.create!(articles_attributes)
puts "#{Article.count} articles written"
