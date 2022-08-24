import 'dart:math';

import 'package:quizzler_flutter/question.dart';

class QuestionBank {
  int _index = 0;

  final Set<int> _alreadyAsked = {};

  final List<Question> _questions = [
    Question(
      questionText: "Sharks are mammals.",
      answer: false,
      fact: "they are actually classified as fish.",
    ),
    Question(
      questionText:
          "Sea otters have a favorite rock they use to break open food.",
      answer: true,
      fact: "they keep these treasures in the loose skin under their arms.",
    ),
    Question(
      questionText: "The blue whale is the biggest animal to have ever lived.",
      answer: true,
      fact: "and that includes dinosaurs!",
    ),
    Question(
      questionText: "The hummingbird egg is the world's smallest bird egg.",
      answer: true,
      fact: "on the flip side, ostriches lay the largest eggs.",
    ),
    Question(
      questionText: "Pigs roll in the mud because they don’t like being clean.",
      answer: false,
      fact:
          "pigs have few sweat glands and their muddy baths help keep them cool.",
    ),
    Question(
      questionText: "Bats are blind.",
      answer: false,
      fact:
          "bats often find their way using ultrasound but their eyes work, just not particularly well).",
    ),
    Question(
      questionText: "A dog sweats by panting its tongue.",
      answer: false,
      fact: "canines sweat through glands in their paws.",
    ),
    Question(
      questionText: "It takes a sloth two weeks to digest a meal.",
      answer: true,
      fact: "that’s the slowest digestion time of any mammal!",
    ),
    Question(
      questionText:
          "The largest living frog is the Goliath frog of West Africa.",
      answer: true,
      fact:
          "this amphibian reaches lengths of 12.5 inches and weighs 7.2 pounds.",
    ),
    Question(
      questionText: "An ant can lift 1,000 times its body weight.",
      answer: false,
      fact: "ants can lift 5,000 times their body weight!",
    ),
    Question(
      questionText:
          "When exiting a cave, bats always go in the direction of the wind.",
      answer: false,
      fact: "bats always turn left out of a cave.",
    ),
    Question(
      questionText: "Galapagos tortoises sleep up to 16 hours a day.",
      answer: true,
      fact:
          "and they can go a year without food or water, so they have lots of time for extra sleep.",
    ),
    Question(
      questionText: "An octopus has seven hearts.",
      answer: false,
      fact:
          "it has three hearts and they do a lot of work. One heart circulates blood around the body and the other two pump blood past the gills and pick up oxygen.",
    ),
    Question(
      questionText: "The goat is the national animal of Scotland.",
      answer: false,
      fact: "it is the unicorn.",
    ),
    Question(
      questionText: "Carnivores are animal eaters.",
      answer: false,
      fact: "herbivores only eat plants.",
    ),
    Question(
      questionText: "A monkey was the first non-human to go into space.",
      answer: false,
      fact: "fruit flies were the first to make the trip. ",
    ),
    Question(
      questionText: "South Africa has one capital.",
      answer: false,
      fact: "it has three: Pretoria, Cape Town, and Bloemfontein.",
    ),
    Question(
      questionText: "The Atlantic Ocean is the biggest ocean on Earth.",
      answer: false,
      fact:
          "the Pacific Ocean is the largest ocean covering more than 60 million square miles.",
    ),
    Question(
      questionText: "Mount Everest is the tallest mountain in the world.",
      answer: true,
      fact: "Mount Everest reaches an elevation of 29,032 feet.",
    ),
    Question(
      questionText: "You can find the ‘Desert of Death’ in California.",
      answer: false,
      fact: "you will have to travel to Dasht-e Margo, Afghanistan to find it.",
    ),
    Question(
      questionText:
          "The total length of the Great Wall of China adds up to 13,171 miles.",
      answer: true,
      fact: "that distance is half the length of the equator.",
    ),
    Question(
      questionText:
          "The two longest rivers in the world are the Mississippi and the Nile.",
      answer: false,
      fact: "it is the Nile and the Amazon.",
    ),
    Question(
      questionText:
          "The Chunnel between England and France is 31.5 miles long.",
      answer: true,
      fact:
          "it is the world’s longest undersea tunnel - that’s the equivalent of 169 Eiffel Towers stacked on top of each other.",
    ),
    Question(
      questionText: "Greenland is the largest island in the world.",
      answer: true,
      fact:
          "the island is approximately 836,330 square miles - three times the size of Texas.",
    ),
    Question(
      questionText: "There are more countries in South America than Africa.",
      answer: false,
      fact: "there are 54 countries in Africa compared to 12 in South America.",
    ),
    Question(
      questionText:
          "Alaska has the most active volcanoes of any state in the United States.",
      answer: true,
      fact: "Alaska has 141 potentially active volcanoes.",
    ),
    Question(
      questionText: "China has the longest coastline in the world.",
      answer: false,
      fact: "the winner is Canada with 151,019 miles.",
    ),
    Question(
      questionText: "Vatican City is the smallest country in the world.",
      answer: true,
      fact:
          "measuring a mere 0.2 square miles, it is almost 120 times smaller than Manhattan in New York.",
    ),
    Question(
      questionText: "Venezuela is home to the world’s highest waterfall.",
      answer: true,
      fact: "you would have to climb 979 meters to reach the top.",
    ),
    Question(
      questionText: "The human body has four lungs.",
      answer: false,
      fact:
          "it has two. Those lungs aid the average person in breathing 11,000 liters of air every day.",
    ),
    Question(
      questionText: "Human skin regenerates every week.",
      answer: false,
      fact:
          "it regenerates every 28 days with an average of 0.001 – 0.003 ounces of skin flakes every hour).",
    ),
    Question(
      questionText:
          "The average human sneeze can be clocked at 100 miles an hour.",
      answer: true,
      fact:
          "and be sure to cover your nose, a sneeze can create upwards of 100,000 droplets.",
    ),
    Question(
      questionText: "Humans lose an average of 75 strands of hair a month.",
      answer: false,
      fact: "humans can lose up to 75 strands in ONE DAY.",
    ),
    Question(
      questionText: "Infants have more bones than adults.",
      answer: true,
      fact:
          "infants are born with approximately 300 bones but have 206 by the time they reach adulthood.",
    ),
    Question(
      questionText: "The heart is the largest internal organ in the body.",
      answer: false,
      fact:
          "the largest internal organ in the body is the liver (the skin is the largest overall).",
    ),
    Question(
      questionText: "Most of the human brain is made of muscle.",
      answer: false,
      fact: "60% is made up of fat, making it the fattiest organ.",
    ),
    Question(
      questionText: "Taste buds can only be found on the tongue.",
      answer: false,
      fact:
          "while most taste buds are on your tongue, there are also taste cells in the back of your throat, on your epiglottis, your nose and sinuses, throat and upper part of the esophagus.",
    ),
    Question(
      questionText:
          "The human eye can distinguish 10 million different colors.",
      answer: true,
      fact:
          "the average human eye contains three cones sensitive to red, green, and blue wavelengths of light. ",
    ),
    Question(
      questionText: "Humans lose more than 80% of heat from their feet.",
      answer: false,
      fact: "80% of heat is lost through the head.",
    ),
    Question(
      questionText: "The human body is about 60% water.",
      answer: true,
      fact: "water is essential for every cell to function.",
    ),
    Question(
      questionText: "Aladdin's character was based on Brad Pitt.",
      answer: false,
      fact: "Tom Cruise was the inspiration for the character.",
    ),
    Question(
      questionText:
          "The song “We Don’t Talk About Bruno” from Encanto is the first Disney song to hit #1 on the Billboard Hot 100 chart in 29 years.",
      answer: true,
      fact:
          "Disney’s last number one hit was “A Whole New World” from Aladdin in 1993. (Frozen hit “Let It Go” peaked at #5)",
    ),
    Question(
      questionText:
          "It took eight months from start to finish to produce the 1959 Disney film, Sleeping Beauty.",
      answer: false,
      fact: "it took eight years.",
    ),
    Question(
      questionText:
          "Pinocchio was the first animated, full-color Walt Disney feature film.",
      answer: false,
      fact: "it was Snow White and the Seven Dwarfs.",
    ),
    Question(
      questionText: "Toy Story was Pixar’s first movie.",
      answer: true,
      fact:
          "it was released in 1995. To date, three more Toy Story films have been released.",
    ),
    Question(
      questionText: "Minnie Mouse’s full name is Wilhelmina Mouse.",
      answer: false,
      fact: "her real name is Minerva Mouse.",
    ),
    Question(
      questionText: "Dumbo is the shortest Disney film.",
      answer: true,
      fact: "this feature-length film runs only 64 minutes long.",
    ),
    Question(
      questionText:
          "The Aristocats was the first film to be made after Walt Disney’s death.",
      answer: true,
      fact:
          "it was the last film to be approved by Walt Disney directly and the last to end with the line “A Walt Disney Production.”",
    ),
    Question(
      questionText:
          "Prince Eric and Ariel from The Little Mermaid have a daughter named Princess Song.",
      answer: false,
      fact:
          "her name is Princess Melody, she is the main character in The Little Mermaid II: Return to the Sea.",
    ),
    Question(
      questionText: "Beauty and the Beast was Disney’s first Broadway musical.",
      answer: true,
      fact:
          "Beauty and the Beast premiered on Broadway in 1994 and ran for 13 years. ",
    ),
    Question(
      questionText: "Cheesecake comes from Italy.",
      answer: false,
      fact: "you can thank Greece for the tasty treat.",
    ),
    Question(
      questionText: "Pineapples grow on trees.",
      answer: false,
      fact: "they actually grow in the ground.",
    ),
    Question(
      questionText:
          "A potato was the first vegetable to be planted on the space shuttle.",
      answer: true,
      fact:
          "the University of Wisconsin-Madison and NASA partnered to put spuds in space.",
    ),
    Question(
      questionText: "Hawaiian pizza comes from Canada.",
      answer: true,
      fact:
          "it was created in 1962 by Sam Panopoulos at the Satellite Restaurant in Ontario, Canada.",
    ),
    Question(
      questionText: "French fries originated from France.",
      answer: false,
      fact: "we have Belgium to thank for the crispy fried goodness.",
    ),
    Question(
      questionText: "Pizza was the first food consumed in space.",
      answer: false,
      fact: "the astronauts first ate up applesauce.",
    ),
    Question(
      questionText: "Caesar Salad originates from Italy.",
      answer: false,
      fact: "the delicious leafy goodness was a product of Tijuana, Mexico.",
    ),
    Question(
      questionText: "Ears of corn have an even number of rows.",
      answer: true,
      fact: "an average ear has 16 rows of kernels.",
    ),
    Question(
      questionText: "Vanilla is the world’s most expensive spice.",
      answer: false,
      fact:
          "saffron is the most expensive spice. A kilogram requires the stigmas of about 150,000 flowers. ",
    ),
    Question(
      questionText:
          "The Chinese New Year is celebrated on the same day every year.",
      answer: false,
      fact:
          "the festival falls between January 21 and February 20 and is determined by the Chinese lunar calendar.",
    ),
    Question(
      questionText:
          "Punxsutawney Phil is just a nickname for the famous groundhog.",
      answer: true,
      fact:
          "the groundhog’s full name is Punxsutawney Phil, Seer of Seers, Sage of Sages, Prognosticator of Prognosticators, and Weather Prophet Extraordinary.",
    ),
    Question(
      questionText:
          "The first St. Patrick’s Day parade in the United States was held in New York City.",
      answer: false,
      fact:
          "Boston hosted the first St. Patty’s Day parade in the U.S. in 1737.",
    ),
    Question(
      questionText:
          "The tradition of dyeing Easter eggs started in the United States.",
      answer: false,
      fact:
          "egg dyeing originated in ancient Ukraine. Painted eggs were believed to bring fertility and good harvests.",
    ),
    Question(
      questionText: "Santa Claus has his own postal code.",
      answer: true,
      fact:
          "in Canada the Postal Service has designated H0H 0H0 (ho ho ho) as the official postcode for letters to Santa. Volunteers have been helping Santa reply to the letters for over 30 years.",
    ),
    Question(
      questionText:
          "Polo takes up the largest amount of space in terms of land area.",
      answer: true,
      fact: "this “Sport of Kings” is played on a 300-yard by 160-yard field.",
    ),
    Question(
      questionText: "Every golf ball has the same number of dimples.",
      answer: false,
      fact: "golf balls have between 300 to 500 dimples.",
    ),
    Question(
      questionText:
          "American Football players started wearing helmets in 1943.",
      answer: true,
      fact: "the first helmets were made of moleskin.",
    ),
    Question(
      questionText:
          "World-renowned jeweler Tiffany & Co. is the maker of the Vince Lombardi trophy.",
      answer: true,
      fact:
          "Tiffany has produced the trophy since the first Super Bowl in 1967.",
    ),
    Question(
      questionText: "Three strikes in a row in bowling is called a chicken.",
      answer: false,
      fact: "it is called a turkey.",
    ),
    Question(
      questionText: "An astronaut has played golf on the moon.",
      answer: true,
      fact:
          "Alan Shepard took time out of his space duties to hit the links, noting one of his shots “went for miles and miles.”",
    ),
    Question(
      questionText: "The Tour de France always finishes in Italy.",
      answer: false,
      fact:
          "the finish line is on the Champs-Élysées, one of the most famous streets in Paris.",
    ),
    Question(
      questionText:
          "Soccer (football) is estimated to have more than 2 billion fans around the world.",
      answer: false,
      fact:
          "Soccer is the world’s most popular sport with an estimated 4 billion fans worldwide. More than half the world’s population tunes in to watch the World Cup every four years.",
    ),
    Question(
      questionText: "Marvel published its first comic in October 1939.",
      answer: true,
      fact:
          "if you can get your hands on a copy, you could sell it for up to \$1 million.",
    ),
    Question(
      questionText:
          "The letter “T” is the most common in the English Language.",
      answer: false,
      fact: "it's the letter “E”.",
    ),
    Question(
      questionText: "People who have chiclephobia are afraid of cats.",
      answer: false,
      fact:
          "people who suffer from chiclephobia have a fear of chewing gum or being around a person chewing gum.",
    ),
    Question(
      questionText:
          "All the kings in a standard deck of cards have a mustache.",
      answer: false,
      fact: "the King of Hearts does not have a mustache. ",
    ),
    Question(
      questionText:
          "Pepsi was the first soft drink to be enjoyed in outer space.",
      answer: false,
      fact: "Coca-Cola first quenched the thirst of the astronauts.",
    ),
    Question(
      questionText: "The name of Batman’s butler is Albert.",
      answer: false,
      fact: "the butler’s name is Alfred.",
    ),
    Question(
      questionText: "Henry VIII had eight wives.",
      answer: false,
      fact: "he had six and had two of them executed.",
    ),
    Question(
      questionText:
          "The maximum length for a video posted on TikTok is 45 seconds.",
      answer: false,
      fact: "it is 60 seconds.",
    ),
    Question(
      questionText:
          "The letter “J” is the only letter in the alphabet not included in the periodic table.",
      answer: true,
      fact: "and no element name starts with “Q”.",
    ),
    Question(
      questionText: "Every country in the world has a rectangular flag.",
      answer: false,
      fact: "Nepal’s flag resembles two pennants stitched together.",
    ),
    Question(
      questionText:
          "The Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies.",
      answer: true,
      fact: "set aside 161 minutes to watch this movie!",
    ),
    Question(
      questionText:
          "The official color of the Golden Gate Bridge in California is “Tennessee Orange.”",
      answer: false,
      fact:
          "the color is known as “International Orange” and provides visibility to ships coming into the bay.",
    )
  ];

  QuestionBank() {
    nextQuestion();
  }

  String get questionText => _questions[_index].questionText;

  bool get answer => _questions[_index].questionAnswer;

  String get factText {
    String fact = _questions[_index].fact;
    return fact[0].toUpperCase() + fact.substring(1);
  }

  //int get totalQuestions => _questions.length;

  //bool get hasQuestion => _alreadyAsked.length != _questions.length;

  void nextQuestion() {
    Random rand = Random();
    do {
      _index = rand.nextInt(_questions.length);
    } while (_alreadyAsked.contains(_index));

    _alreadyAsked.add(_index);
  }

  void reset() => _alreadyAsked.clear();
}
