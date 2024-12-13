import 'package:project2/models/art.dart';
import 'package:flutter/material.dart';

class Artists extends ChangeNotifier {
  Map<String, dynamic> allArt = {
    "vangogh": [
      Art(
        name: "The Starry Night",
        description:
        "A famous depiction of a swirling night sky over a quiet town, painted in 1889.",
        imagePath: "lib/images/Vangogh/starry_night.png",
        price: 150.00,
      ),
      Art(
        name: "Sunflowers",
        description:
        "A vibrant portrayal of yellow sunflowers in a vase, part of a series painted in 1888.",
        imagePath: "lib/images/Vangogh/sunflowers.png",
        price: 130.00,
      ),
      Art(
        name: "The Bedroom",
        description:
        "A peaceful depiction of Van Gogh's bedroom in Arles, created in 1888.",
        imagePath: "lib/images/Vangogh/the_bedroom.png",
        price: 140.00,
      ),
      Art(
        name: "Irises",
        description:
        "A stunning study of purple irises with rich green leaves, painted in 1889.",
        imagePath: "lib/images/Vangogh/irises.png",
        price: 125.00,
      ),
      Art(
        name: "Cafe Terrace at Night",
        description:
        "A lively nighttime street scene in Arles, painted in 1888.",
        imagePath: "lib/images/Vangogh/cafe_terrace_at_night.png",
        price: 145.00,
      ),
    ],
    "picasso": [
      Art(
        name: "Les Demoiselles d'Avignon",
        description:
        "A revolutionary Cubist painting of five women, created in 1907.",
        imagePath: "lib/images/Picasso/les_demoiselles_davignon.png",
        price: 250.00,
      ),
      Art(
        name: "Guernica",
        description:
        "A mural-sized depiction of the horrors of war, painted in 1937.",
        imagePath: "lib/images/Picasso/guernica.png",
        price: 300.00,
      ),
      Art(
        name: "The Weeping Woman",
        description:
        "An emotional portrait of a crying woman, created in 1937.",
        imagePath: "lib/images/Picasso/the_weeping_woman.png",
        price: 200.00,
      ),
      Art(
        name: "Girl with a Mandolin",
        description:
        "A Cubist study of a musician, painted in 1910.",
        imagePath: "lib/images/Picasso/girl_with_a_mandolin.png",
        price: 220.00,
      ),
      Art(
        name: "The Old Guitarist",
        description:
        "A melancholic painting from Picasso's Blue Period, created in 1903.",
        imagePath: "lib/images/Picasso/the_old_guitarist.png",
        price: 230.00,
      ),
    ],
    "monet": [
      Art(
        name: "Water Lilies",
        description:
        "A large series featuring Monet's pond and water lilies, created between 1896 and 1926.",
        imagePath: "lib/images/Monet/water_lilies.png",
        price: 280.00,
      ),
      Art(
        name: "Impression, Sunrise",
        description:
        "The painting that inspired the Impressionist movement, created in 1872.",
        imagePath: "lib/images/Monet/impression_sunrise.png",
        price: 250.00,
      ),
      Art(
        name: "The Japanese Bridge",
        description:
        "A serene depiction of a bridge over a pond in Monet's garden, painted in 1899.",
        imagePath: "lib/images/Monet/the_japanese_bridge.png",
        price: 270.00,
      ),
      Art(
        name: "Poppies",
        description:
        "A landscape of a field of poppies under a summer sky, painted in 1873.",
        imagePath: "lib/images/Monet/poppies.png",
        price: 260.00,
      ),
      Art(
        name: "Houses of Parliament, London",
        description:
        "Atmospheric depictions of London’s Parliament building, painted in 1904.",
        imagePath: "lib/images/Monet/houses_of_parliament.png",
        price: 290.00,
      ),
    ],
    "warhol": [
      Art(
        name: "Campbell's Soup Cans",
        description:
        "A series of 32 canvases depicting soup cans, created in 1962.",
        imagePath: "lib/images/Warhol/campbells_soup_cans.png",
        price: 180.00,
      ),
      Art(
        name: "Marilyn Diptych",
        description:
        "A colorful, repeated image of Marilyn Monroe, created in 1962.",
        imagePath: "lib/images/Warhol/marilyn_diptych.png",
        price: 200.00,
      ),
      Art(
        name: "Banana",
        description:
        "A minimalist pop-art illustration of a banana, created in 1967.",
        imagePath: "lib/images/Warhol/banana.png",
        price: 160.00,
      ),
      Art(
        name: "Eight Elvises",
        description:
        "A repetitive depiction of Elvis Presley, created in 1963.",
        imagePath: "lib/images/Warhol/eight_elvises.png",
        price: 220.00,
      ),
      Art(
        name: "Gold Marilyn Monroe",
        description:
        "A golden background framing Marilyn Monroe's portrait, created in 1962.",
        imagePath: "lib/images/Warhol/gold_marilyn_monroe.png",
        price: 210.00,
      ),
    ],
    "daVinci": [
      Art(
        name: "Mona Lisa",
        description:
        "The most famous portrait in the world, painted between 1503 and 1506.",
        imagePath: "lib/images/DaVinci/mona_lisa.png",
        price: 500.00,
      ),
      Art(
        name: "The Last Supper",
        description:
        "A fresco depicting Jesus and his disciples at their final meal, created between 1495 and 1498.",
        imagePath: "lib/images/DaVinci/the_last_supper.png",
        price: 550.00,
      ),
      Art(
        name: "Vitruvian Man",
        description:
        "A drawing showing the ideal human proportions, created in 1490.",
        imagePath: "lib/images/DaVinci/vitruvian_man.png",
        price: 520.00,
      ),
      Art(
        name: "Lady with an Ermine",
        description:
        "A portrait of a woman holding an ermine, painted between 1489 and 1490.",
        imagePath: "lib/images/DaVinci/lady_with_an_ermine.png",
        price: 510.00,
      ),
      Art(
        name: "Salvator Mundi",
        description:
        "A depiction of Christ holding a crystal orb, created around 1500.",
        imagePath: "lib/images/DaVinci/salvator_mundi.png",
        price: 530.00,
      ),
    ],
  };
}
