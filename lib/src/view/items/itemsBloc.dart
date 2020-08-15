import 'package:shopping_app/src/view/items/model.dart';

class ItemBloc {
  List<ItemModel> _itemList = [
    ItemModel({
      "itemId": 0,
      "price": 240,
      "categoryId": 0,
      "itemName": "Face Cream",
      "imgUrl":
          "https://5.imimg.com/data5/JG/OT/MY-25623530/ponds-face-cream-500x500.jpg",
      "description":
          "Incorporated in the year 2016, at Indore (Madhya Pradesh, India), we, “Aniks Cosmetics”, are the leading wholesaler and trader of supreme quality Deodorant, Face Cream, Face Pack, Face Powder, Matte Lipstick and Sun Cream. The offered products are processed with the mixture of mild and pure quality ingredients under the visionary guidance of our professionals as per the set medical norms. Our offered products are widely applied on skin for cleansing, beautifying, promoting attractiveness, or altering the appearance without affecting the body's structure or functions by make-up artists. Further, the offered products are thoroughly tested on various stages by our quality controllers assuring their purity and quality. We offer these products in gradation of various packaging options for safer deliveries."
    }),
    ItemModel({
      "itemId": 1,
      "categoryId": 0,
      "itemName": "Himalaya Face Wash",
      "price": 300,
      "imgUrl":
          "https://images-na.ssl-images-amazon.com/images/I/81dlMozaEfL._SL1500_.jpg",
      "description":
          "DEAL FOR NORMAL TO OILY SKIN: Himalaya Purifying Neem Face Wash is a gentle and effective daily facial cleanser that removes impurities and fights occasional acne without drying your skin. EXPERIENCE THE WISDOM OF NEEM & TURMERIC: The time-tested combination of Neem and Turmeric detoxifies and purifies your skin for a clear, fresh, healthy-looking complexion. HYPOALLERGENIC & DERMATOLOGICALLY TESTED: Enjoy the sensory pleasure of a rich daily face wash that is mild, comfortable and non-drying on your skin. FREE FROM COMMON CONCERNS: Himalaya Purifying Neem Face Wash contains no parabens, no Sodium Lauryl Sulfate (SLS) and no phthalates.NO ANIMAL TESTING: We care about our furry friends. That is why we never test our personal care products on animals."
    }),
    ItemModel({
      "itemId": 2,
      "categoryId": 0,
      "itemName": "Himalaya Purifying Neem",
      "price": 350,
      "imgUrl":
          "https://images-na.ssl-images-amazon.com/images/I/61BZa7z-uAL.jpg",
      "description":
          "If you want the deep, gentle cleansing caress of pure Neem and Turmeric with a fresh fragrance that smells so great the whole family will want to use it, enjoy Himalaya Purifying Neem & Turmeric Cleansing Bar. Keep it all to yourself, or share it with your family and friends in a convenient money-saving 6-pack that makes stocking-up easy! Himalaya Purifying Neem & Turmeric Cleansing Bar blends together all the goodness of pure herbs with saponified essential oils in a nurturing soap-free base. Time-honored Neem has been used for thousands of years to clean and detoxify the body. And Turmeric soothes and cools your skin, leaving you with a healthy-looking glow. You feel fresh and rejuvenated without dryness. It's great for your mild acne too! Himalaya Purifying Neem & Turmeric Cleansing Bar comes in 6-pack of 125 g, 4.41 oz bars. And all Himalaya Herbals products are rigorously studied for purity, safety and efficacy. In addition to being tested for quality, effectiveness and sensory comfort Himalaya Purifying Neem & Turmeric Cleansing Bar is soap-free and contains no harsh abrasives or detergents. It won't dry your skin and can be used as often as you need it, from head to toe. It is also produced in a cGMP facility with no animal testing. If you want deeply-clean skin, put the trusted historical herbal duo of Neem and Turmeric to work for you. Plant new seeds of wellness within yourself with Himalaya Purifying Neem & Turmeric Cleansing Bar. When it comes to natural herbal products used and trusted all over the world, it's Himalaya since 1930."
    }),
    ItemModel({
      "itemId": 3,
      "categoryId": 0,
      "itemName": "Ponds Cold Cream",
      "price": 150,
      "imgUrl":
          "https://images-na.ssl-images-amazon.com/images/I/71kvn3mIx9L._SL1500_.jpg",
      "description":
          "Dissolves all traces of makeup and moisturizes for soft radiant skin Here at Pond’s, we believe that skin care doesn’t need to be complicated or time-consuming with several different products. The perfect blend of oil and water, our Cold Cream Cleanser, has been a classic beauty essential since 1907. It has withstood the test of time to become an iconic skincare product, used by generations of women. Unlike ordinary cleansers, Pond’s Cold Cream is actually 50% moisturizer. This facial cleanser combines deep cleansing with face moisturizer to remove dirt, makeup and even stubborn waterproof mascara, while infusing your skin with vital moisture for soft and smooth skin (without drying your skin) - all in one easy routine. Essential ingredients: Mineral Oil-effectively removes makeup from skin’s surface. Beeswax-a moisturizer known to prevent moisture from leaving the skin If you’re new to this beauty secret, using Cold Cream Cleanser is easy! Apply a thin layer of Pond’s Cold Cream Cleanser gently to skin, remove by wiping with cotton pads or wet washcloth, and rinse if desired. Today, with women balancing work, family and everything else that comes their way, Pond’s Cold Cream remains more relevant than ever as it has multiple benefits in one, a makeup remover and moisturizing face cleanser. Pond’s Cold Cream Cleanser, removes even the toughest makeup and works great as an eye makeup remover as well as for your full face, while leaving your skin soft and smooth. Try now and rediscover the beauty of classic skin care!"
    }),
    ItemModel({
      "itemId": 4,
      "categoryId": 1,
      "itemName": "Ghost of Tsushima",
      "price": 1150,
      "imgUrl":
          "https://gamespot1.cbsistatic.com/uploads/original/1591/15918215/3615058-ghost%20of%20tsushima.jpg",
      "description":
          "In the late 13th century, the Mongol empire has laid waste to entire nations along their campaign to conquer the East. Tsushima Island is all that stands between mainland Japan and a massive Mongol invasion fleet led by the ruthless and cunning general, Khotun Khan. As the island burns in the wake of the first wave of the Mongol assault, samurai warrior Jin Sakai stands as one of the last surviving members of his clan. He is resolved do whatever it takes, at any cost, to protect his people and reclaim his home. He must set aside the traditions that have shaped him as a warrior to forge a new path, the path of the Ghost, and wage an unconventional war for the freedom of Tsushima."
    }),
    ItemModel({
      "itemId": 5,
      "categoryId": 1,
      "itemName": "Game console",
      "price": 1250,
      "imgUrl": "https://scx2.b-cdn.net/gfx/news/hires/2019/googleschall.jpg",
      "description":
          "The Wi-Fi-enabled controller has a button that lets players tap Google Assistant to ask questions about the games being played. Another button lets users share gameplay directly to Google's video streaming service, YouTube.Google said playing video games will be as simple as pressing a button. Players won't have to download or install anything."
    }),
    ItemModel({
      "itemId": 6,
      "categoryId": 2,
      "itemName": "Acer Predator Helios 300",
      "price": 122350,
      "imgUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT21iXMIDru1y-tjReelizkfIOyipMvJ2s5GA&usqp=CAU",
      "description":
          "Ready for battle and eager for a fight, the Helios 300 drops you into the game with everything you need. Only now we’ve armed it with NVIDIA GeForce GTX 1660 Ti graphics, the latest 9th Gen Intel Core i7 Processor and our custom-engineered 4th Gen AeroBlade 3D Fan Technology. With the 144Hz IPS panel and 3ms Overdrive response time you can say farewell to blur and hello clear, crisp, high-octane gameplay."
    }),
    ItemModel({
      "itemId": 7,
      "categoryId": 2,
      "itemName": "Apple iPhone",
      "price": 11150,
      "imgUrl":
          "https://drop.ndtv.com/TECH/product_database/images/913201720152AM_635_iphone_x.jpeg",
      "description":
          "he iPhone X has to be one of the most-talked about tech products of 2017, and introduces a brand new paradigm for interaction, with gestures"
    }),
    ItemModel({
      "itemId": 8,
      "categoryId": 3,
      "itemName": "Dancing Lion cub",
      "price": 550,
      "imgUrl":
          "https://www.ikea.com/in/en/images/products/djungelskog-soft-toy__0560458_PE662342_S5.JPG?f=s",
      "description":
          "A cute lion cub dancing and singing. Comes with 3 batterys with a 6 month money back warranty"
    }),
    ItemModel({
      "itemId": 8,
      "categoryId": 3,
      "itemName": "Panda Soft Toy",
      "price": 524,
      "imgUrl":
          "https://www.ikea.com/in/en/images/products/kramig-soft-toy__0162448_PE317642_S5.JPG",
      "description":
          "All soft toys are good at hugging, comforting and listening and are fond of play and mischief. In addition, they are reliable and tested"
    }),
    ItemModel({
      "itemId": 9,
      "categoryId": 3,
      "itemName": "Dart Board",
      "price": 5241,
      "imgUrl":
          "https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_1000/c30797230eb70ca0e37ff74ee3b35b71",
      "description": "A Wooden dart board ."
    }),
    ItemModel({
      "itemId": 10,
      "categoryId": 4,
      "itemName": "FASNO Soft Latex",
      "price": 299,
      "imgUrl":
          "https://images-na.ssl-images-amazon.com/images/I/61HmiXbfzPL._SL1500_.jpg",
      "description":
          "Made from premium quality rubber latex and will not over-stretch unlike the cheaper ones; allows you to tone and sculpt every muscle group.8-shaped Chest Developer - Allows you to tone and sculpt every muscle group. Unique figure eight design helps tone, strengthen, and define arms, shoulders, chest, back, buttocks, and legs"
    }),
    ItemModel({
      "itemId": 11,
      "categoryId": 4,
      "itemName": "Jump Rope",
      "price": 299,
      "imgUrl":
          "https://images-na.ssl-images-amazon.com/images/I/41v2THAchNL._SX425_.jpg",
      "description":
          "BENEFITS- Best aerobic exercises for burning a lot of Calorie, slimming down, improving flexibility, developing core strength and good for heart. Appropriate for all ages, lower-impact activity than jogging.IDEAL USE - Cardio Workouts, Intensive Cardio, Training, Fitness, Leisure Gym COMFORTABLE GRIP- the rope turns fast and smooth, which is required in cross fit and speed sports; The grip is comfortable even when your palms sweat"
    }),
    ItemModel({
      "itemId": 12,
      "categoryId": 5,
      "itemName": "Mens T-Shirt",
      "price": 299,
      "imgUrl":
          "https://4.imimg.com/data4/AA/HC/MY-26596027/men-s-fancy-t-shirt-500x500.jpg",
      "description":
          "Can be worn to parties, casual coffee meetings or a movie date. Team it up with a pair of denims, chinos, shorts or formal trousers and set the town on fire with your Suave."
    }),
    ItemModel({
      "itemId": 13,
      "categoryId": 5,
      "itemName": "Womens T-Shirt",
      "price": 299,
      "imgUrl":
          "https://contents.mediadecathlon.com/p1081926/2000x2000/sq/100_womens_cardio_fitness_t-shirt_-_neon_pink_domyos_by_decathlon_8383583_1081926.jpg?k=05396e5deb9002c5d0494cf72da24e95",
      "description":
          "Can be worn to parties, casual coffee meetings or a movie date. Team it up with a pair of denims, chinos, shorts or formal trousers and set the town on fire with your Suave."
    })
  ];
  ItemBloc();

  Future<List<ItemModel>> getItemList(int categoryId) async {
    List<ItemModel> temp = [];
    for (var i = 0; i < _itemList.length; i++) {
      if (_itemList[i].categoryId == categoryId) {
        temp.add(_itemList[i]);
      }
    }
    return temp;
  }

  List<ItemModel> get itemList => _itemList;
}

final itemBloc = ItemBloc();
