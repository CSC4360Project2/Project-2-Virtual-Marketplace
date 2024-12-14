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
    "dali": [
      Art(
        name: "The Persistence of Memory",
        description: "A surreal depiction of melting clocks, created in 1931.",
        imagePath: "lib/images/Dali/persistence_of_memory.png",
        price: 300.00,
      ),
      Art(
        name: "The Elephants",
        description: "A surreal painting of elephants with long, spindly legs, created in 1948.",
        imagePath: "lib/images/Dali/the_elephants.png",
        price: 280.00,
      ),
      Art(
        name: "The Sacrament of the Last Supper",
        description: "A surreal reinterpretation of The Last Supper, created in 1955.",
        imagePath: "lib/images/Dali/the_sacrament_of_the_last_supper.png",
        price: 350.00,
      ),
      Art(
        name: "Dream Caused by the Flight of a Bee Around a Pomegranate a Second Before Awakening",
        description: "A dreamlike scene with a woman and bizarre animals, painted in 1944.",
        imagePath: "lib/images/Dali/dream_caused_by_the_flight.png",
        price: 320.00,
      ),
      Art(
        name: "Galatea of the Spheres",
        description: "A painting featuring a fragmented portrait of his wife, Gala, painted in 1952.",
        imagePath: "lib/images/Dali/galatea_of_the_spheres.png",
        price: 330.00,
      ),
    ],
    "matisse": [
      Art(
        name: "The Dance",
        description: "A vibrant painting featuring figures in movement, painted in 1910.",
        imagePath: "lib/images/Matisse/the_dance.png",
        price: 240.00,
      ),
      Art(
        name: "Blue Nude",
        description: "A simple yet bold depiction of a reclining nude, created in 1907.",
        imagePath: "lib/images/Matisse/blue_nude.png",
        price: 230.00,
      ),
      Art(
        name: "The Red Studio",
        description: "An abstract depiction of an artist's studio, painted in 1911.",
        imagePath: "lib/images/Matisse/the_red_studio.png",
        price: 250.00,
      ),
      Art(
        name: "Woman with a Hat",
        description: "A portrait of his wife, Amélie, painted in 1905.",
        imagePath: "lib/images/Matisse/woman_with_a_hat.png",
        price: 220.00,
      ),
      Art(
        name: "Jazz",
        description: "A series of colorful paper cut-outs created in the 1940s.",
        imagePath: "lib/images/Matisse/jazz.png",
        price: 260.00,
      ),
    ],
    "rembrandt": [
      Art(
        name: "The Night Watch",
        description: "A famous portrait of a militia company, painted in 1642.",
        imagePath: "lib/images/Rembrandt/the_night_watch.png",
        price: 400.00,
      ),
      Art(
        name: "Self-Portrait with Two Circles",
        description: "A masterful self-portrait, created in 1665-1669.",
        imagePath: "lib/images/Rembrandt/self_portrait_with_two_circles.png",
        price: 380.00,
      ),
      Art(
        name: "The Jewish Bride",
        description: "A portrayal of a couple in a tender embrace, created in 1665.",
        imagePath: "lib/images/Rembrandt/the_jewish_bride.png",
        price: 420.00,
      ),
      Art(
        name: "The Anatomy Lesson of Dr. Nicolaes Tulp",
        description: "A depiction of a public dissection, created in 1632.",
        imagePath: "lib/images/Rembrandt/the_anatomy_lesson.png",
        price: 450.00,
      ),
      Art(
        name: "Bathsheba at Her Bath",
        description: "A sensual depiction of Bathsheba, painted in 1654.",
        imagePath: "lib/images/Rembrandt/bathsheba_at_her_bath.png",
        price: 460.00,
      ),
    ],
    "klimt": [
      Art(
        name: "The Kiss",
        description: "A romantic portrayal of a couple in an embrace, created in 1907-1908.",
        imagePath: "lib/images/Klimt/the_kiss.png",
        price: 550.00,
      ),
      Art(
        name: "Portrait of Adele Bloch-Bauer I",
        description: "A gilded portrait of a socialite, painted in 1907.",
        imagePath: "lib/images/Klimt/portrait_of_adele_bloch_bauer.png",
        price: 600.00,
      ),
      Art(
        name: "The Tree of Life",
        description: "A decorative painting symbolizing connection and eternity, created in 1905.",
        imagePath: "lib/images/Klimt/the_tree_of_life.png",
        price: 570.00,
      ),
      Art(
        name: "Danaë",
        description: "A depiction of the Greek mythological figure, painted in 1907.",
        imagePath: "lib/images/Klimt/danae.png",
        price: 590.00,
      ),
      Art(
        name: "Judith and the Head of Holofernes",
        description: "A portrayal of the biblical story of Judith, painted in 1901.",
        imagePath: "lib/images/Klimt/judith_and_the_head.png",
        price: 580.00,
      ),
    ],
  };
}
